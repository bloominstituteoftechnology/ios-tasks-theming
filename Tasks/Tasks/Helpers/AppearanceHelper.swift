//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Nathanael Youngren on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var backgroundBlue = UIColor(red: 030/255, green: 038/255, blue: 095/255, alpha: 1.0)
    static var headerFontColor = UIColor(red: 146/255, green: 161/255, blue: 236/255, alpha: 1.0)
    static var bodyFontColor = UIColor(red: 157/255, green: 170/255, blue: 236/255, alpha: 1.0)
    static var fadedBodyFontColor = UIColor(red: 112/255, green: 116/255, blue: 197/255, alpha: 1.0)
    static var textFieldBlue = UIColor(red: 019/255, green: 026/255, blue: 083/255, alpha: 1.0)
    static var redTintColor = UIColor(red: 242/255, green: 136/255, blue: 131/255, alpha: 1.0)
    
    static func setFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Expressway Regular", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setThemeAppearance() {
        let navBar = UINavigationBar.appearance()
        let textAttribute = [NSAttributedString.Key.foregroundColor: headerFontColor]
        
        navBar.barTintColor = .clear
        navBar.titleTextAttributes = textAttribute
        navBar.largeTitleTextAttributes = textAttribute
        
        UISegmentedControl.appearance().tintColor = redTintColor
        UIBarButtonItem.appearance().tintColor = headerFontColor
    
        UITextField.appearance().tintColor = redTintColor
        UITextView.appearance().tintColor = redTintColor
    }
    
}
