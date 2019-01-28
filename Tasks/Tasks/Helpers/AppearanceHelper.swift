//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Cameron Dunn on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit
enum AppearanceHelper{
    
    enum CustomColors{
        static var yellow = UIColor(red: 250.0/255.0, green: 252/255, blue: 88/255, alpha: 1)
        static var lightGray = UIColor(red: 119.0/255.0, green: 119/255, blue: 119/255, alpha: 1)
        static var darkGray = UIColor(red: 27.0/255.0, green: 27/255, blue: 27/255, alpha: 1)
    }
    
    static func setTheme(){
        UINavigationBar.appearance().barTintColor = CustomColors.darkGray
        UISegmentedControl.appearance().tintColor = CustomColors.yellow
        UIBarButtonItem.appearance().tintColor = CustomColors.yellow
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: CustomColors.yellow]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
    }
    static func carbonFont(textStyle: UIFontTextStyle, size: CGFloat) -> UIFont{
        let font = UIFont(name: "Carbon", size: size)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}
