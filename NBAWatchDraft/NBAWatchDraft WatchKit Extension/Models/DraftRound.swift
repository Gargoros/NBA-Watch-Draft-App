
import Foundation

struct DraftRound: Decodable, Identifiable  {
    var id = UUID()
    let headline: String
    let subheadline: String
    let round: String
    let picks: [Pick]
    
    enum CodingKeys: String, CodingKey {
        case headline
        case subheadline
        case round
        case picks
    }
}
