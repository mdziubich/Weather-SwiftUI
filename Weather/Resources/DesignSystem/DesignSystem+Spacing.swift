import Foundation

extension DesignSystem {

    // This code was inspired by the article:
    // https://medium.com/eightshapes-llc/space-in-design-systems-188bcbae0d62
    enum Spacing: CGFloat {

        case xs = 4.0
        case small = 8.0
        case medium = 16.0
        case large = 32.0

        var value: CGFloat {
            self.rawValue
        }
    }
}
