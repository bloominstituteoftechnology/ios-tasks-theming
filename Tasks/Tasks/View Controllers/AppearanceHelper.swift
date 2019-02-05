//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Vijay Das on 2/4/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var purpleSwatch = UIColor(red: 137/255, green: 90/255, blue: 255/255, alpha: 1)
    static var lightGray = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
    
    static func setPurpleThemeAppearance() {
        
        UIBarButtonItem.appearance().tintColor = purpleSwatch
        UISegmentedControl.appearance().tintColor = purpleSwatch
    }
    
}


