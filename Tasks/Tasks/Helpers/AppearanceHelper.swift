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
        UINavigationBar.appearance().barTintColor = backgroundBlue
        UISegmentedControl.appearance().tintColor = vibrantGreen
        UIBarButtonItem.appearance().tintColor = vibrantGreen
        UILabel.appearance().textColor = vibrantGreen
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: vibrantGreen]
        
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = vibrantGreen
        UITextView.appearance().tintColor = vibrantGreen
        
        UITextField.appearance().keyboardAppearance = .dark
    }
}
