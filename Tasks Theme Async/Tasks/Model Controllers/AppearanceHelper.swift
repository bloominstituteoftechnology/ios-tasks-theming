//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Sergey Osipyan on 1/14/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

import UIKit

enum AppearanceHelper {
    
    static var lambdaBrown = UIColor(red: 52.0/255.0, green: 17.0/255.0, blue: 10.0/255.0, alpha: 1.0)
    static var lambdaTextBrown = UIColor(red: 169.0/255.0, green: 125.0/255.0, blue: 117.0/255.0, alpha: 1.0)
    static var backgroundBrown = UIColor(red: 86/255.0, green: 51.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    static var backgroundLightBrown = UIColor(red: 122.0/255.0, green: 79.0/255.0, blue: 65.0/255.0, alpha: 1.0)
    static func typerighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Minya Nouvelle", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    static func newFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Neuropol X", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        
        UISegmentedControl.appearance().tintColor = lambdaBrown
        UINavigationBar.appearance().barTintColor = backgroundBrown
        UIBarButtonItem.appearance().tintColor = lambdaBrown
        UILabel.appearance().textColor = lambdaBrown
        
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: lambdaTextBrown]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: lambdaTextBrown]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.font: AppearanceHelper.typerighterFont(with: .body, pointSize: 40)]
        UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().tintColor = lambdaTextBrown
        UITextField.appearance().textColor = lambdaBrown
        UITextField.appearance().backgroundColor = lambdaTextBrown
        UITextView.appearance().tintColor = lambdaBrown
        UITextView.appearance().textColor = lambdaBrown
       // UITextView.appearance().keyboardAppearance = .dark
        UITextView.appearance().backgroundColor = lambdaTextBrown
       // UIView.appearance().backgroundColor = backgroundLightBrown
        
        
    }
    
    static func style(button: UIButton) {
        
        button.titleLabel?.font = AppearanceHelper.typerighterFont(with: .body, pointSize: 30)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = lambdaBrown
        
    }
}

