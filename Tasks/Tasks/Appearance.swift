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
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.charcoal, NSAttributedStringKey.font: UIFont(name: "Street Cred", size: 50)!]
        
        //bar button item
        UIBarButtonItem.appearance().tintColor = .charcoal
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "Street Cred", size: 16)!, NSAttributedStringKey.foregroundColor: UIColor.charcoal], for: .normal)
        
        //labels
        
        
        //segment control
        
    }
}
