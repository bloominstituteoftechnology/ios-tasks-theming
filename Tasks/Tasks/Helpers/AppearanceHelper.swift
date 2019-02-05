//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Vijay Das on 2/4/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var purpleSwatch = UIColor(red: 137/255, green: 90/255, blue: 255/255, alpha: 1)
    static var lightGray = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
    
    static func setPurpleThemeAppearance() {
        
        UIBarButtonItem.appearance().tintColor = purpleSwatch
        UISegmentedControl.appearance().tintColor = purpleSwatch
        
        let textAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().barTintColor = lightGray
        
        UITextField.appearance().tintColor = purpleSwatch
        UITextView.appearance().tintColor = purpleSwatch
        
        UITextField.appearance().keyboardAppearance = .dark
//        UITextView.appearance().keyboardAppearance = .dark
        
    }
    
//    static func style(_ button: UIButton, titleColor: UIColor = .white) {
//        button.titleLabel?.font = expresswayFont(with: .callout, pointSize: 14)
//
//    }
//
    
    
    
    static func expresswayFont(with textStyle:UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        
        let font = UIFont(name: "Expressway", size: pointSize)!
        
        let resizableFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
        return resizableFont
        
        
        
    }
    
}


