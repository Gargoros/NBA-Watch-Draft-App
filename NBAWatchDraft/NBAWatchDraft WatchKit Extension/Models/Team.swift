
import Foundation

struct Team: Decodable, Identifiable  {
    var id = UUID()
    let name: String
    let market: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case market
    }
}

