//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Michael Stoffer on 6/5/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    static var darkBlue = UIColor(red: 26.0/255.0, green: 30.0/255.0, blue: 39.0/255.0, alpha: 1.0)
    static var darkGrey = UIColor(red: 38.0/255.0, green: 44.0/255.0, blue: 56.0/255.0, alpha: 1.0)
    static var slightWhite = UIColor(red: 245.0/255.0, green: 254.0/255.0, blue: 255.0/255.0, alpha: 1.0)

    static func newYorkMediumFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "New York Medium", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setDarkBlueTheme() {
        UINavigationBar.appearance().barTintColor = darkBlue
        UISegmentedControl.appearance().tintColor = slightWhite
        UIBarButtonItem.appearance().tintColor = slightWhite
        UITextField.appearance().tintColor = darkGrey
        UITextView.appearance().tintColor = darkGrey
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: slightWhite, NSAttributedString.Key.font: newYorkMediumFont(with: .largeTitle, pointSize: 32)]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
    }
}
