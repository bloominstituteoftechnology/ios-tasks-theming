//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Mitchell Budge on 5/20/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    static var taskGreen = UIColor(red: 0/255, green: 104/255, blue: 43/255, alpha: 1.0)
    static var backgroundWhite = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
    static var backgroundSteel = UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: 1.0)
    
    static func setAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundSteel
        UISegmentedControl.appearance().tintColor = backgroundSteel
        UIBarButtonItem.appearance().tintColor = backgroundWhite
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: "Prime", size: 40)!]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UITextView.appearance().tintColor = taskGreen
        UITextField.appearance().tintColor = taskGreen
    }
    
    static func primeFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Prime", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
}
