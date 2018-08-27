//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jeremy Taylor on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    static var taskGreen = UIColor(red: 92/255.0, green: 190/255.0, blue: 165/255.0, alpha: 1.0)
    static var backgroundColor = UIColor(red: 220/255.0, green: 207/255.0, blue: 68/255.0, alpha: 1.0)
    static var tableViewSeperatorColor = UIColor(red: 132/255.0, green: 68/255.0, blue: 41/255.0, alpha: 1.0)
    
    static func setupAppearance() {
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().barTintColor = taskGreen
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UISegmentedControl.appearance().tintColor = backgroundColor
        
        UIBarButtonItem.appearance().tintColor = .white
        
        UITableView.appearance().backgroundColor = taskGreen
        UITableViewCell.appearance().backgroundColor = taskGreen
        UITableViewHeaderFooterView.appearance().tintColor = backgroundColor
        
        
        UILabel.appearance().textColor = .white
        
        UITextField.appearance().tintColor = taskGreen
        UITextView.appearance().tintColor = taskGreen
        
    }
    
    static func applicationFont(withTextStyle textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "SF Burlington Script", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
}
