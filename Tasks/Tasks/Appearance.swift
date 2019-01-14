import UIKit

enum Appearance {
    
    static func mainFont(pointSize: CGFloat) -> UIFont {
        let mainTextFont = UIFont(name: "Kwixter", size: pointSize)!
        return mainTextFont
    }
    
    static func subFont(pointSize: CGFloat) -> UIFont {
        let subTextFont = UIFont(name: "Barlow Condensed", size: pointSize)!
        return subTextFont
    }
    
    static func setDarkAppearance() {
        UINavigationBar.appearance().barTintColor = .pink
        UIBarButtonItem.appearance().tintColor = .paleYellow
        UILabel.appearance().textColor = .dullGreen
       
        //let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.dullGreen]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.violet]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.dullGreen]
        
        UITextField.appearance().tintColor = .skyBlue
        UITextView.appearance().tintColor = .dullGreen
        
        //segment control
        UISegmentedControl.appearance().tintColor = .violet
        let attr: [NSAttributedString.Key : Any] = [.font: UIFont(name: "HelveticaNeue-Bold", size: 13.0)!, .foregroundColor: UIColor.dullGreen]
        UISegmentedControl.appearance().setTitleTextAttributes(attr as [NSAttributedString.Key : Any], for: .normal)
        
    }
   
}
