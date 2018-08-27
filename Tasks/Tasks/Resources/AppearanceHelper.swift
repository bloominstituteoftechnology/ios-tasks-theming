//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Lisa Sampson on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var backgroundBlack = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var purple = UIColor(red: 173.0/255.0, green: 66.0/255.0, blue: 235.0/255.0, alpha: 1.0)
    static var lightPurple = UIColor(red: 194.0/255.0, green: 104.0/255.0, blue: 247.0/255.0, alpha: 1.0)
    
    static func setupAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundBlack
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: lightPurple]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UIBarButtonItem.appearance().tintColor = purple
        UISegmentedControl.appearance().tintColor = purple
        
        UITableViewCell.appearance().backgroundColor = backgroundBlack
        
        UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().tintColor = purple
        UITextView.appearance().tintColor = purple
        
    }
    
}
