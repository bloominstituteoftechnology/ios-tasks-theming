//
//  Appearance.swift
//  Tasks
//
//  Created by Linh Bouniol on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var yellow = UIColor(red: 252.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var orange = UIColor(red: 255.0/255.0, green: 174.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var lime = UIColor(red: 101.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var bloodOrange = UIColor(red: 255.0/255.0, green: 113.0/255.0, blue: 7.0/255.0, alpha: 1.0)
    static var darkBlue = UIColor(red: 30.0/255.0, green: 48.0/255.0, blue: 87.0/255.0, alpha: 1.0)
    
    static func setupCitrusAppearance() {
            
        UINavigationBar.appearance().barTintColor = darkBlue
        
        // NavBar title
        let textAttributes = [NSAttributedStringKey.foregroundColor : orange]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UIBarButtonItem.appearance().tintColor = orange
        
        // Table view
        UITableView.appearance().backgroundColor = darkBlue
        UITableViewCell.appearance().backgroundColor = darkBlue
        
        
        // Label text
        UILabel.appearance().textColor = bloodOrange
        
        // Text field/view I-cursor
        UITextField.appearance().tintColor = bloodOrange
        UITextView.appearance().tintColor = bloodOrange
        
        // Text field keyboard
        UITextField.appearance().keyboardAppearance = .dark
        
        // Segmented control
        UISegmentedControl.appearance().tintColor = orange
    }
    
    // Custom Font
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Berylium", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
}
