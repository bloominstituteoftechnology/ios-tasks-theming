import UIKit

struct AppearanceHelper {
    
    // Set source of the main font
    static let mainTextFont = UIFont(name: "dotty", size: 25)
    
    // Scale size of text
    static func scaledMainTextFont(with textStyle: UIFont.TextStyle, size: CGFloat) -> UIFont {
        guard let font = mainTextFont else { fatalError() }
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static let backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func setDankAppearance() {
        
        UINavigationBar.appearance().barTintColor = backgroundGray
        UISegmentedControl.appearance().tintColor = .green
        UIBarButtonItem.appearance().tintColor = .green
        UILabel.appearance().textColor = .green
        
        // Allows you to modify a specific string
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = .green
        UITextView.appearance().tintColor = .green
        
        UITextField.appearance().keyboardAppearance = .dark
        
        // UITextView.appearance(whenContainedInInstancesOf: [MessageCreationViewController.self]).textColor = .red
    }
    
    static func style(button: UIButton) {
        button.setTitleColor(.green, for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 8
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        button.titleLabel?.font = AppearanceHelper.scaledMainTextFont(with: .body, size: 25)
    }
    
}
