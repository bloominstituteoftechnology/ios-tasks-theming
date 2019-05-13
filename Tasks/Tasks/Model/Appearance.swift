//
//  Appearance.swift
//  Tasks
//
//  Created by Christopher Aronson on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    static var mainColor = #colorLiteral(red: 0.5176470588, green: 0.5607843137, blue: 0.6470588235, alpha: 1)
    static var secondaryColor = #colorLiteral(red: 0.7568627451, green: 0.2862745098, blue: 0.3254901961, alpha: 1)
    static var textColor = #colorLiteral(red: 0.1294117647, green: 0.1294117647, blue: 0.1294117647, alpha: 1)
    static var secondaryTextColor = #colorLiteral(red: 0.1294117647, green: 0.1294117647, blue: 0.1294117647, alpha: 1)
    static var backgroundColor = #colorLiteral(red: 0.8980392157, green: 0.862745098, blue: 0.7725490196, alpha: 1)
    static var separator = #colorLiteral(red: 0.7411764706, green: 0.7411764706, blue: 0.7411764706, alpha: 1)
    
    static func setAppearance() {
        UINavigationBar.appearance().barTintColor = mainColor
        UIBarButtonItem.appearance().tintColor = secondaryColor
        UISegmentedControl.appearance().tintColor = mainColor
        
        let font = robotoFontBold(with: .largeTitle, pointSize: 45)
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: textColor, NSAttributedString.Key.font: font]
        
        UITextView.appearance().tintColor = mainColor
        UITextField.appearance().tintColor = mainColor
        UITextView.appearance().font = robotoFont(with: .body, pointSize: 18)
        UITextField.appearance().font = robotoFont(with: .body, pointSize: 18)
    }
    
    static func robotoFontBold(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Roboto-Bold", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func robotoFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Roboto-Regular", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}
