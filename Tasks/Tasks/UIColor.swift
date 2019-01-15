import UIKit

extension UIColor {
    convenience init (_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    static let pink = UIColor(193, 94, 159, 1)
    static let paleYellow = UIColor(228, 209, 134, 1)
    static let skyBlue = UIColor(42, 129, 179, 1)
    static let dullGreen = UIColor(121, 138, 84, 1)
    static let violet = UIColor(96, 35, 98, 1)
}
