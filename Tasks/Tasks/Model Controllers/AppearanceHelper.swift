//
//  File.swift
//  Tasks
//
//  Created by Ryan Murphy on 5/20/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var backgroundBlue = UIColor(displayP3Red: 177 / 255, green: 202 / 255, blue: 198 / 255, alpha: 1.0)
    static var tanPink = UIColor(displayP3Red: 240 / 255, green: 202 / 255, blue: 194 / 255, alpha: 1.0)
    static var pink = UIColor(displayP3Red: 219 / 255, green: 123 / 255, blue: 205 / 255, alpha: 1.0)
    static var purpleish = UIColor(displayP3Red: 120 / 255, green: 44 / 255, blue: 162 / 255, alpha: 1.0)
    static var darkPurpleish = UIColor(displayP3Red: 61 / 255, green: 35 / 255, blue: 64 / 255, alpha: 1.0)
    static var lightTanPink = UIColor(displayP3Red: 238 / 255, green: 225 / 255, blue: 223 / 255, alpha: 1.0)
    
    static func setAppearance() {
        
        UINavigationBar.appearance().barTintColor = backgroundBlue
        UINavigationBar.appearance().tintColor = darkPurpleish
        UIBarButtonItem.appearance().tintColor = darkPurpleish
        
        let altTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(displayP3Red: 120 / 255, green: 44 / 255, blue: 162 / 255, alpha: 1.0)]
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor(displayP3Red: 61 / 255, green: 35 / 255, blue: 64 / 255, alpha: 1.0)]
        
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UISegmentedControl.appearance().setTitleTextAttributes(textAttributes, for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes(altTextAttributes, for: .normal)
    }
    
    
//    static func typerighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
//        let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
//        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
//    }
    
    
    
    
}
