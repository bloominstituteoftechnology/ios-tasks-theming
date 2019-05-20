//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jeremy Taylor on 5/20/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    static let blueColor = UIColor(red: 115 / 255, green: 182 / 255, blue: 208 / 255, alpha: 1.0)
    static let redColor = UIColor(red: 180 / 255, green: 93 / 255, blue: 101 / 255, alpha: 1.0)
    
    static func blackChanceryFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "BlackChancery", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setupAppearance() {
        UINavigationBar.appearance().barTintColor = blueColor
        UIBarButtonItem.appearance().tintColor = .white
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UILabel.appearance().textColor = .white
        UITextView.appearance().backgroundColor = .yellow
        UITextView.appearance().tintColor = .black
        UISegmentedControl.appearance().tintColor = redColor
        UITextField.appearance().tintColor = .black
        UITextField.appearance().backgroundColor = .yellow
    }
}


