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
        UINavigationBar.appearance().barTintColor = .dullGreen
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.paleYellow, NSAttributedStringKey.font: UIFont(name: "Kwixter", size: 30)!]
        
        //bar button item
        UIBarButtonItem.appearance().tintColor = .paleYellow
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font : UIFont(name: "Kwixter", size: 14)!, NSAttributedStringKey.foregroundColor : UIColor.paleYellow], for: .normal)
       
        //labels
        UILabel.appearance().textColor = .white
        UILabel.appearance().font = UIFont(name: "Kwixter", size: 16)
        
        //segment control
        UISegmentedControl.appearance().tintColor = .violet
        let attr: [NSAttributedString.Key : Any] = [.font: UIFont(name: "Open Sans", size: 13.0)!, .foregroundColor: UIColor.dullGreen]
        UISegmentedControl.appearance().setTitleTextAttributes(attr as [NSAttributedString.Key : Any], for: .normal)
        
    }
}
