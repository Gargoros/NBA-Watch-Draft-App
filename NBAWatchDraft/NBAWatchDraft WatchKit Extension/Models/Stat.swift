
import Foundation

struct Stat: Decodable, Identifiable  {
    var id = UUID()
    let value: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case value
        case name
    }
}
