
import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach(draftData) { round in
                DraftRoundItemView(round: round)
            }
        }
        .listStyle(CarouselListStyle())
        .navigationTitle(Text("NBA Draft"))
    }
    var background: some View {
        Rectangle().fill(Color("CardBackground"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
