//
//  TasksAppearanceHelper.swift
//  Tasks
//
//  Created by Sameera Roussi on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum TasksAppearanceHelper {
    
    // Default colors
    static var navbarBrown = UIColor(red: 72.0/256.0, green: 38.0/256.0, blue: 3.0/256.0, alpha: 1.0)
    static var lightBrown = UIColor(red: 243.0/256.0, green: 237.0/256.0, blue: 222.0/256.0, alpha: 1.0)
    static var barelyBrown = UIColor(red: 249.0/256.0, green: 248.0/256.0, blue: 240.0/256.0, alpha: 1.0)
    static var navItemBrown = UIColor(red: 245.0/256.0, green: 236.0/256.0, blue: 222.0/256.0, alpha: 1.0)
    
    // Critical tasks header view color
    static var criticalViews = UIColor(red: 148.0/256/0, green: 17.0/256.0, blue: 0.0/256.0, alpha: 1.0)
    
    
    // Fonts
    static func attackOfCucumbersFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        // Define the new custom font
        let font = UIFont(name: "attack of the cucumbers", size: pointSize)!
        // Return as a font metric
        font.fontDescriptor.withSymbolicTraits(.traitBold)
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    
    // Default styling
    static func setDefaultAppearance() {
        UINavigationBar.appearance().barTintColor = navbarBrown
        UIBarButtonItem.appearance().tintColor = navItemBrown
        UISegmentedControl.appearance().tintColor = navbarBrown
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: lightBrown]

        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
    }
}
