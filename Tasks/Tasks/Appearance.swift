import UIKit

enum Appearance {
    
    static func zagFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Zag Regular", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func streetFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Street Cred", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        //navigationbar
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.gold, NSAttributedStringKey.font: UIFont(name: "Street Cred", size: 40)!]
        
        //bar button item
        UIBarButtonItem.appearance().tintColor = .mediumGray
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "Street Cred", size: 16)!, NSAttributedStringKey.foregroundColor: UIColor.mediumGray], for: .normal)
        
        //labels
        UILabel.appearance().textColor = .white
        UILabel.appearance().font = UIFont(name: "Street Cred", size: 16)
        
        //segment control
        UISegmentedControl.appearance().tintColor = UIColor.gold
        let attr: [NSAttributedStringKey: Any] = [.font: UIFont(name: "Street Cred", size: 13.0)!, .foregroundColor: UIColor.gold]
        UISegmentedControl.appearance().setTitleTextAttributes(attr as [NSAttributedStringKey: Any], for: .normal)
    }
}
