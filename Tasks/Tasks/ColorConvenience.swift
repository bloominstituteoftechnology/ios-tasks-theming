import UIKit

extension UIColor {
    convenience init (_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    static let charcoal = UIColor(40, 40, 39, 1)
    static let mediumGray = UIColor(63, 63, 62, 1)
    static let paleYellow = UIColor(245, 228, 122, 1)
    static let gold = UIColor(159, 133, 69, 1)
}
