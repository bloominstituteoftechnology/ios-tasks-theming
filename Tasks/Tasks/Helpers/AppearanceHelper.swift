//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Paul Yi on 2/4/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    static var twitterBlue = UIColor(red: 56/255, green: 161/255, blue: 243/255, alpha: 1)
    static var snapchatYellow = UIColor(red: 255/255, green: 252/255, blue: 0/255, alpha: 1)
    
    static func setLightAppearance() {
        UIBarButtonItem.appearance().tintColor = twitterBlue
        UISegmentedControl.appearance().tintColor = snapchatYellow
        
        UINavigationBar.appearance()
        
        let textAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UINavigationBar.appearance().barTintColor = snapchatYellow
        
        UITextField.appearance().tintColor = UIColor.lightGray
        UITextView.appearance().tintColor = UIColor.lightGray
        UITextField.appearance().keyboardAppearance = .light
    }
    
    // General Style Button Method
    
    static func style(_ button: UIButton) {
        button.titleLabel?.font = architexFont(with: .callout, pointSize: 36)
        button.backgroundColor = twitterBlue
        button.layer.cornerRadius = 8
        button.setTitleColor(.white, for: .normal)
    }
    
    static func architexFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Architext", size: pointSize)!
        
        // Make the font use a text style to resize according to the user's system font size
        
        let resizableFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
        return resizableFont
    }
    
}
