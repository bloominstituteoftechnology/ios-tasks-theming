import UIKit


enum AppearanceHelper {
    
    static let peachy = UIColor(red:0.96, green:0.80, blue:0.65, alpha:1.0)
    static let backgroundTeal = UIColor(red:0.07, green:0.20, blue:0.26, alpha:1.0)
    static let textBlack = UIColor(red:0.23, green:0.23, blue:0.22, alpha:1.0)
    static let paperWhite = UIColor(red:0.95, green:0.95, blue:0.93, alpha:1.0)
    
    
    static let mainTextFont = UIFont(name: "Zacatecas 1914", size: 25)
    
    static func scaledMainTextFont(with textStyle: UIFont.TextStyle, size: CGFloat) -> UIFont {
        guard let font = mainTextFont else { fatalError() }
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        
        UINavigationBar.appearance().barTintColor = backgroundTeal
        UISegmentedControl.appearance().tintColor = peachy
        UITableView.appearance().separatorColor = backgroundTeal
        UIBarButtonItem.appearance().tintColor = peachy
        UILabel.appearance().textColor = textBlack
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: peachy]
        
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = peachy
        UITextView.appearance().tintColor = peachy
        
        UITextField.appearance().keyboardAppearance = .dark
        
    }
    
}

