
import Foundation

public struct LengthFormatters {
    public static let imperialLengthFormatter: LengthFormatter = {
        let formatter = LengthFormatter()
        formatter.isForPersonHeightUse = true
        formatter.unitStyle = .short

        return formatter
    }()
}
