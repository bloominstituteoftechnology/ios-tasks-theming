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
        UINavigationBar.appearance().barTintColor = .charcoal
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.mediumGray, NSAttributedStringKey.font: UIFont(name: "Street Cred", size: 30)!]
        
        //bar button item
        
        
        //labels
        
        
        //segment control
        
    }
}
