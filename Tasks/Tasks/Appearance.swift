import UIKit

enum Appearance {

    //allows for accomodating large type
    static func kwixterFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Kwixter", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func openSansFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Open Sans", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        //navigationbar
        UINavigationBar.appearance().barTintColor = .black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont(name: "Kwixter", size: 30)!]
        
        //bar button item
        UIBarButtonItem.appearance().tintColor = .white
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font : UIFont(name: "Kwixter", size: 14)!, NSAttributedStringKey.foregroundColor : UIColor.white], for: .normal)
       
        //labels
        UILabel.appearance().textColor = .white
        UILabel.appearance().font = UIFont(name: "Kwixter", size: 16)
        
        //segment control
        UISegmentedControl.appearance().tintColor = UIColor.violet.withAlphaComponent(0.65)
        let attr: [NSAttributedString.Key : Any] = [.font: UIFont(name: "Open Sans", size: 17.0)!, .foregroundColor: UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attr as [NSAttributedString.Key : Any], for: .normal)
        
    }
}
