import UIKit

enum AppearanceHelper {
    
    static let neonGreen = UIColor(red: 50/255, green: 200/255, blue: 50/255, alpha: 1)
    
    static func setGreenAppearance() {
        
        UIBarButtonItem.appearance().tintColor = neonGreen
        
        let textAttributes: [NSAttributedString.Key: Any] = [ .foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().barTintColor = .black
        
        UITextField.appearance().tintColor = neonGreen
        UITextView.appearance().tintColor = neonGreen
    }
    
}
