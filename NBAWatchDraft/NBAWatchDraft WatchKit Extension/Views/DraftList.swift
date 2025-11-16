
import SwiftUI

struct DraftList: View {
    let data: DraftRound
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                Text(data.round.uppercased())
                    .custom(font: .bold, size: 20)
                Divider()
                DraftRoundCardView(picks: data.picks)
            }
        }
        .navigationBarTitle(Text("By Round"))
    }
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList(data: sampleRound)
    }
}


extension DraftList_Previews {
    static var sampleRound: DraftRound  {
        return MockDraftPreviewService.draftRound
    }
}
