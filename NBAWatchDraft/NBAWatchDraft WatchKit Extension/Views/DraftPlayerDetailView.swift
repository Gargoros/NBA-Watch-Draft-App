
import SwiftUI

struct DraftPlayerDetailView: View {
    var prospect: Prospect
    
    var body: some View {
        ScrollView {
            VStack(alignment:.leading, spacing: 0) {
                DraftPlayerDetailHeaderView(prospect: prospect)
                DraftPlayerDetailStatsView(prospect: prospect)
                DraftPlayerDetailInfoView(prospect: prospect)
            }
        }
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView(prospect: Prospect(firstName: "Craig", lastName: "Clayton", position: "PG", ht: 85, wt: 235, image: "", experience: "", birthPlace: "", analysis: "", round: 1, draftPosition: 1, school: "", team: Team(name: "Lakers", market: "Los Angeles"), stats: []))
    }
}

