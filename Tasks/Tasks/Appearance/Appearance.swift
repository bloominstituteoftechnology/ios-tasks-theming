//
//  Appearance.swift
//  Tasks
//
//  Created by David Doswell on 1/14/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

struct Appearance {
    static let customColor = UIColor(red: 210.0/255.0, green: 66.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    
    static func setUp() {
        UINavigationBar.appearance().barTintColor = customColor
        UINavigationBar.appearance().tintColor = .white

        UISegmentedControl.appearance().tintColor = customColor
        
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "ethnocentric", size: 25.0) as Any]
        
        UITextField.appearance().tintColor = customColor
        UITextField.appearance().textColor = customColor
        
        UILabel.appearance().textColor = customColor
        
        
    }
}
