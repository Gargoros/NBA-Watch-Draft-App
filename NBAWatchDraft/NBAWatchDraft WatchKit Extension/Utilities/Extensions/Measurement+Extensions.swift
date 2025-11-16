
import Foundation

extension Measurement where UnitType : UnitLength {
    var displayHeight: String? {
        guard let measurement = self as? Measurement<UnitLength> else {
            return nil
        }
        let meters = measurement.converted(to: .meters).value
        return LengthFormatters.imperialLengthFormatter.string(fromMeters: meters)
    }
}
