//
//  Appearance.swift
//  Tasks
//
//  Created by Ilgar Ilyasov on 10/1/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    /// Colors
    
    static var robinhoodGreen = UIColor(red:0.38, green:0.79, blue:0.61, alpha:1.0)
    static var robinhoodPink = UIColor(red:0.72, green:0.27, blue:0.73, alpha:1.0)
    static var udacityBlue = UIColor(red:0.30, green:0.67, blue:0.80, alpha:1.0)
    static var udacityPurple = UIColor(red:0.38, green:0.26, blue:0.63, alpha:1.0)
    
    static func setGreenTheme() {
        
        /// Change appearance of all Navigation Bars tint color & text color
        UINavigationBar.appearance().barTintColor = robinhoodGreen
        let attributes: [NSAttributedStringKey : Any] = [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().largeTitleTextAttributes = attributes
        
        /// Change Bar Buttons tint color
        UIBarButtonItem.appearance().tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        /// Change Labels text color
        let font = setLibelFont(textStyle: .callout, size: 20)
        UILabel.appearance().textColor = robinhoodPink
        UILabel.appearance().font = UIFontMetrics.default.scaledFont(for: font)
        
        /// Change text color
        UITextField.appearance().tintColor = udacityPurple
        UITextField.appearance().textColor = udacityPurple
        UITextView.appearance().tintColor = udacityPurple
        UITextView.appearance().textColor = udacityPurple
        
        
        /// Change Segmented Controls color
        UISegmentedControl.appearance().tintColor = robinhoodGreen
    }
    
    
    // MARK: - Set Font
    
    static func setLibelFont(textStyle: UIFontTextStyle, size: CGFloat) -> UIFont {
        guard let libelFont = UIFont(name: "Libel Suit", size: size) else {
            fatalError("Check the font name. There isn't any font named Libel Suit")
        }
        return libelFont
    }
    
    static func setJeanSunFont(textStyle: UIFontTextStyle, size: CGFloat) -> UIFont {
        guard let jeanSunFont = UIFont(name: "JeanSunHo", size: size) else {
            fatalError("Check the font name. There isn't any font named JeanSunHo")
        }
        return jeanSunFont
    }
    
    // MARK: - Set Particular UIViews Style
    
    static func styleTextField(textField: UITextField) {
        let font = Appearance.setLibelFont(textStyle: .caption1, size: 20)
        
        textField.font = UIFontMetrics.default.scaledFont(for: font)
        textField.adjustsFontForContentSizeCategory = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = Appearance.robinhoodGreen.cgColor
        textField.layer.cornerRadius = 5
    }
    
    static func styleTextView(textView: UITextView) {
        let font = Appearance.setLibelFont(textStyle: .caption1, size: 20)
        
        textView.font = UIFontMetrics.default.scaledFont(for: font)
        textView.adjustsFontForContentSizeCategory = true
        textView.layer.borderWidth = 1
        textView.layer.borderColor = Appearance.robinhoodGreen.cgColor
        textView.layer.cornerRadius = 5
    }
}

