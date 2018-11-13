import UIKit

enum Appearance {
    
    static var red = UIColor.red
    
    static func setNewAppearance() {
        
        UINavigationBar.appearance().barTintColor = red
        
        let attr = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = attr
        UINavigationBar.appearance().largeTitleTextAttributes = attr
        
        UIBarButtonItem.appearance().tintColor = UIColor.white
        
        UITextField.appearance().tintColor = red
        UITextView.appearance().tintColor = red
        
        UISegmentedControl.appearance().tintColor = red
        UIRefreshControl.appearance().tintColor = UIColor.white
        
        
    }
    
}
