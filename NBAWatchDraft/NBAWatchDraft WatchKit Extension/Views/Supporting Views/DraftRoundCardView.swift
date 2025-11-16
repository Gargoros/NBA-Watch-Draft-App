
import SwiftUI
import WatchKit

struct DraftRoundCardView: View {
    @State private var currentIndex = 0.0
    @State private var isShowingDetail = false
    private let numberOfVisibleCards = 3
    let picks: [Pick]
    
    private var currentCardIndex: Int {
        Int(currentIndex.rounded())
    }
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                ForEach((0...picks.count-1).reversed(), id: \.self) { index in
                    DraftCardView(prospect: self.picks[index].prospect)
                        .cardTransformed(self.currentIndex, card: index)
                        .onTapGesture {
                            if index == currentCardIndex {
                                self.isShowingDetail.toggle()
                            }
                        }
                        .sheet(isPresented: self.$isShowingDetail) {
                            DraftPlayerDetailView(prospect: self.picks[currentCardIndex].prospect)
                        }
                }
            }
            .frame(height: 120)
        }
        .focusable(true)
        .digitalCrownRotation(
            $currentIndex.animation(.easeInOut(duration: 0.3)),
            from: 0.0,
            through: Double(picks.count - 1),
            by: 1.0,
            sensitivity: .low
        )
        .gesture(
            DragGesture(minimumDistance: 15)
                .onEnded { value in
                    let horizontalAmount = abs(value.translation.width)
                    let verticalAmount = abs(value.translation.height)
                    
                    guard horizontalAmount > verticalAmount else { return }
                    
                    let velocity = abs(value.predictedEndTranslation.width - value.translation.width)
                    
                    withAnimation(.easeInOut(duration: 0.25)) {
                        if value.translation.width > 30 || velocity > 100 {
                            goToPreviousCard()
                        } else if value.translation.width < -30 || velocity < -100 {
                            goToNextCard()
                        }
                    }
                }
        )
        .onChange(of: currentCardIndex) { _ in
            WKInterfaceDevice.current().play(.click)
        }
    }
    
    private func goToNextCard() {
        guard currentIndex < Double(picks.count - 1) else { return }
        currentIndex += 1
    }
    
    private func goToPreviousCard() {
        guard currentIndex > 0 else { return }
        currentIndex -= 1
    }
}

struct DraftRoundCardView_Previews: PreviewProvider {
    static var previews: some View {
        DraftRoundCardView(picks: samplePicks)
    }
}

extension DraftRoundCardView_Previews {
    static var samplePicks: [Pick]  {
        return MockDraftPreviewService.picks()
    }
}


