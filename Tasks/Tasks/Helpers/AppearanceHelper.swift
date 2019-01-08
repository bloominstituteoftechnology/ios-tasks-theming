

import UIKit

struct AppearanceHelper {
    
    // Colors for application
    static let backgroundTone = UIColor(red: 0.97, green: 0.96, blue: 0.95, alpha: 1.0)
    static let darkBrown = UIColor(red: 0.44, green: 0.43, blue: 0.41, alpha: 1.0)
    static let lightBrown = UIColor(red: 0.82, green: 0.76, blue: 0.68, alpha: 1.0)
    
    static let lightBlueTints = UIColor(red: 0.78, green: 0.89, blue: 0.94, alpha: 1.0)

    static let criticalPriorityRed = UIColor(red: 0.53, green: 0.34, blue: 0.36, alpha: 1.0)
    static let highPriorityRed = UIColor(red: 0.68, green: 0.47, blue: 0.47, alpha: 1.0)
    static let mediumPriorityBlue = UIColor(red: 0.56, green: 0.68, blue: 0.69, alpha: 1.0)
    static let lowPriorityGreen = UIColor(red: 0.62, green: 0.72, blue: 0.50, alpha: 1.0)
    
    
    // Fonts for application
    static let mainTextFontTitles = UIFont(name: "MostlyMono", size: 50)
    static let mainTextFontLabels = UIFont(name: "MostlyMono", size: 20)
    
    //guard let mainTextFontLabels = UIFont(name: "MostlyMono", size: 20) else { return }
    
    //let scaledFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: mainTextFontLabels)
    
    // Scalable Font that can be used if user needs to scale font size
    static func scaledMainTextFont(with textStyle: UIFontTextStyle, size: CGFloat) -> UIFont {
        guard let font = mainTextFontLabels else { fatalError() }

        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }

    
    static func setLightAppearance() {
        
        // Navigation bar: color
        UINavigationBar.appearance().barTintColor = backgroundTone
        
        // Navigation titles: color & font
        let textAttributes = [NSAttributedStringKey.foregroundColor: AppearanceHelper.lightBrown, NSAttributedStringKey.font: mainTextFontTitles]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes

        // Segmented control: color
        UISegmentedControl.appearance().tintColor = lightBlueTints
        UISegmentedControl.appearance().backgroundColor = .white
        
        // Bar button: color & shape
        UIBarButtonItem.appearance().tintColor = darkBrown
        
        // All buttons
        UIButton.appearance().layer.cornerRadius = 16
        
        // Labels: text color & background color
        UILabel.appearance().textColor = .black
        UILabel.appearance(whenContainedInInstancesOf: [TasksTableViewController.self]).textColor = .white
        
        // Text Fields
        UITextField.appearance().tintColor = lightBlueTints
        UITextField.appearance().textColor = darkBrown
        
        // Text Views
        UITextView.appearance().tintColor = lightBlueTints
        UITextView.appearance().textColor = darkBrown
    }

    
}
