//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Moses Robinson on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    // MARK: - Theme Colors
    
    static var darkNavy = UIColor(red:0.11, green:0.14, blue:0.17, alpha:1.00)
    static var paperWhite = UIColor(red:0.95, green:0.95, blue:0.93, alpha:1.00)
    static var inkBlack = UIColor(red:0.23, green:0.23, blue:0.22, alpha:1.00)
    static var gold = UIColor(red:0.64, green:0.47, blue:0.25, alpha:1.00)
    
    // MARK: - Fonts
    
    static func mainFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Alegreya", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static let titleFont = UIFont(name: "Vogue", size: 45)!
    
    //MARK: - Theme Setup
    
    static func setAppearance() {
        UINavigationBar.appearance().barTintColor = darkNavy
        UIBarButtonItem.appearance().tintColor = gold
        UISegmentedControl.appearance().tintColor = gold
        UITableView.appearance().separatorColor = gold
        
        UITextField.appearance().tintColor = gold
        UITextView.appearance().tintColor = gold
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: paperWhite, NSAttributedString.Key.font: titleFont]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
    }
}
