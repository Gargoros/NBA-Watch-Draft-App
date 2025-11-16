
import Foundation

struct Prospect: Decodable, Identifiable  {
    var id = UUID()
    let firstName: String
    let lastName: String
    let position: String
    let ht: Int
    let wt: Int
    let image: String
    let experience: String
    let birthPlace: String
    let analysis: String
    let round: Int
    let draftPosition: Int
    let school: String
    let team: Team
    let stats: [Stat]
    
    enum CodingKeys: String, CodingKey {
        case firstName
        case lastName
        case position
        case ht
        case wt
        case image
        case experience
        case birthPlace
        case analysis
        case round
        case draftPosition
        case school
        case team
        case stats
    }

    func height() -> String {
        let a = Measurement(value: Double(self.ht), unit: UnitLength.inches)
        if let ht = a.displayHeight {
            return ht
        }

        return "0' 0\""
    }

    func weight() -> String {
        return "\(self.wt) lbs"
    }
}
