//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Hayden Hastings on 5/20/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static let backgroundColor = UIColor(red: 25 / 255, green: 28 / 255, blue: 36 / 255, alpha: 1.0)
    static let lightBackgroundColor = UIColor(red: 202 / 255, green: 203 / 255, blue: 207 / 255, alpha: 1.0)
    static let yellowColor = UIColor(red: 235 / 255, green: 226 / 255, blue: 76 / 255, alpha: 1.0)
    static let lightBlue = UIColor(red: 127 / 255, green: 203 / 255, blue: 187 / 255, alpha: 1.0)
    
    static func setDarkBlueAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundColor
        UINavigationBar.appearance().tintColor = lightBlue
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "28 Days Later", size: 40)!]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UISegmentedControl.appearance().tintColor = lightBlue
        
        UITextView.appearance().tintColor = backgroundColor
        UITextField.appearance().tintColor = backgroundColor
    }
    
    static func usaFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "American Dream", size: pointSize)!
        
        let dynamicFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
        return dynamicFont
    }
    
    static func daysLaterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "28 Days Later", size: pointSize)!
        
        let dynamicFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
        return dynamicFont
    }
}
