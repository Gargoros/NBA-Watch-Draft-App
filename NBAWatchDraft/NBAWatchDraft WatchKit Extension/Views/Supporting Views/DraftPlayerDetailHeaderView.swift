import SwiftUI

struct DraftPlayerDetailHeaderView: View {
    var prospect: Prospect
    
    var body: some View {
        VStack(spacing: -35) {
            HStack(alignment:.top, spacing: 0) {
                Text("\(prospect.round)")
                    .custom(font: .ultralight, size: 19)
                    .offset(x: -2, y: 15)
                Text(String(format: "%02d", prospect.draftPosition))
                    .custom(font: .bold, size: 70)
            }
            .padding(.leading, 12)
            .offset(x: -45, y: -17)

            VStack(spacing: -1) {
                HStack {
                    Image(prospect.team.name.lowercased()).offset(x: 29)
                    Image(prospect.image.lowercased()).offset(x:0, y: -25)
                }
                .frame(height: 58)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color(prospect.team.name.lowercased()))

                VStack(spacing: -5) {
                    Text(prospect.firstName.uppercased())
                        .custom(font: .ultralight, size: 13)
                    Text(prospect.lastName.uppercased())
                        .custom(font: .bold, size: 20)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.black)
            }
        }
    }
}

struct DraftPlayerDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailHeaderView(prospect: Prospect(firstName: "Craig", lastName: "Clayton", position: "PG", ht: 85, wt: 235, image: "", experience: "", birthPlace: "", analysis: "", round: 1, draftPosition: 1, school: "", team: Team(name: "Lakers", market: "Los Angeles"), stats: []))
    }
}
