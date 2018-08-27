//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Carolyn Lea on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance
{
    static var darkSalmonColor = UIColor(red: 255.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1.0)
    static var salmonColor = UIColor(red: 255.0/255.0, green: 153.0/255.0, blue: 153.0/255.0, alpha: 1.0)
    static var mediumSalmonColor = UIColor(red: 252.0/255.0, green: 176.0/255.0, blue: 177.0/255.0, alpha: 1.0)
    static var lightSalmonColor = UIColor(red: 255.0/255.0, green: 242.0/255.0, blue: 244.0/255.0, alpha: 1.0)
    static var offWhiteColor = UIColor(red: 238.0/255.0, green: 238.0/255.0, blue: 238.0/255.0, alpha: 1.0)
    static var darkTextColor = UIColor(red: 124.0/255.0, green: 125.0/255.0, blue: 130.0/255.0, alpha: 1.0)
    
    static func setUpTheme()
    {
        UINavigationBar.appearance().barTintColor = darkSalmonColor
        
        let navigationFont = UIFont(name: "Penguin Attack", size: 20)!
        let navigationLargeFont = UIFont(name: "foo", size: 44)! //34 is Large Title size by default
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: offWhiteColor, NSAttributedStringKey.font: navigationFont]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        
        let largeTextAttributes = [NSAttributedStringKey.foregroundColor: offWhiteColor, NSAttributedStringKey.font: navigationLargeFont]
        UINavigationBar.appearance().largeTitleTextAttributes = largeTextAttributes
        
        UIBarButtonItem.appearance().tintColor = offWhiteColor
        UILabel.appearance().textColor = darkSalmonColor
        UILabel.appearance().font = applicationFont(with: .caption1, pointSize: 30)
        UISegmentedControl.appearance().tintColor = darkSalmonColor
        UITextField.appearance().tintColor = mediumSalmonColor
        UITableViewCell.appearance().backgroundColor = lightSalmonColor
        
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont
    {
        let result = UIFont(name: "Penguin Attack", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
}
