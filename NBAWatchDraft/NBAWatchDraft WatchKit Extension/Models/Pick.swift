
import Foundation


struct Pick: Decodable, Identifiable  {
    var id = UUID()
    let prospect: Prospect
    
    enum CodingKeys: String, CodingKey {
        case prospect
    }
}

