//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Lisa Sampson on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var backgroundYellow = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 191.0/255.0, alpha: 1.0)
    static var purple = UIColor(red: 173.0/255.0, green: 66.0/255.0, blue: 235.0/255.0, alpha: 1.0)
    static var lightPurple = UIColor(red: 194.0/255.0, green: 104.0/255.0, blue: 247.0/255.0, alpha: 1.0)
    
    static func setupAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundYellow
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: lightPurple, NSAttributedStringKey.font : titleFont(with: .title2, pointSize: 30)]
        let largeTextAttributes = [NSAttributedStringKey.foregroundColor: lightPurple, NSAttributedStringKey.font : titleFont(with: .title2, pointSize: 50)]

        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = largeTextAttributes
        
        
        UIBarButtonItem.appearance().tintColor = purple
        UISegmentedControl.appearance().tintColor = purple
        
        UITableViewCell.appearance().backgroundColor = backgroundYellow
        
        //UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().tintColor = purple
        UITextView.appearance().tintColor = purple
        
    }
    
    static func titleFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Tahu!", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
    
    static func tableFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Avenir next", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
    
}
