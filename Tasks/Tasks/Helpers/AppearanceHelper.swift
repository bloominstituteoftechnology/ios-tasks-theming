import UIKit

enum AppearanceHelper {
    
    static var backgroundBlue = UIColor(named: "MidnightBlue")
    static var vibrantGreen = UIColor(named: "VibrantGreen")
    
    //allows for accomodating large type
    static func bebasNeueFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Bebas Neue", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func openSansFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Open Sans", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        UINavigationBar.appearance().barTintColor = vibrantGreen
        UISegmentedControl.appearance().tintColor = vibrantGreen
        UIBarButtonItem.appearance().tintColor = UIColor.white
        UILabel.appearance().textColor = vibrantGreen
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont(name: "Open Sans", size: 45)!]
        
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes as [NSAttributedStringKey : Any]
        UINavigationBar.appearance().titleTextAttributes = textAttributes as [NSAttributedStringKey : Any]
        
//        UITextField.appearance().tintColor = .white
//        UITextView.appearance().tintColor = vibrantGreen
        UITextField.appearance().keyboardAppearance = .dark
        UILabel.appearance().font = UIFont(name: "Bebas Neue", size: 20)
        UITableViewCell.appearance().backgroundColor = backgroundBlue
        
        UIBarButtonItem.appearance().setTitleTextAttributes(
            [
                NSAttributedStringKey.font : UIFont(name: "Open Sans", size: 18)!,
                NSAttributedStringKey.foregroundColor : UIColor.white,
                ], for: .normal)
        
    }
    
    static func style(button: UISegmentedControl) {
        let segmentedControl = UISegmentedControl()
        let titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont(name: "Open Sans", size: 15)]
        segmentedControl.setTitleTextAttributes(titleTextAttributes as [AnyHashable : Any], for: .normal)
        segmentedControl.setTitleTextAttributes(titleTextAttributes as [AnyHashable : Any], for: .selected)
    }
}
