//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Kat Milton on 7/15/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    
    static var deepBlue = UIColor(red: 34.0/255.0, green: 40.0/255.0, blue: 51.0/255.0, alpha: 1.0)
    static var paleBlue = UIColor(red: 104.0/255.0, green: 134.0/255.0, blue: 135.0/255.0, alpha: 1.0)
    static var criticalRed = UIColor(red: 148.0/255.0, green: 54.0/255.0, blue: 49.0/255.0, alpha: 1.0)
    static var highOrange = UIColor(red: 194.0/255.0, green: 121.0/255.0, blue: 52.0/255.0, alpha: 1.0)
    static var mediumYellow = UIColor(red: 227.0/255.0, green: 186.0/255.0, blue: 73.0/255.0, alpha: 1.0)
    static var lowGreen = UIColor(red: 166.0/255.0, green: 196.0/255.0, blue: 57.0/255.0, alpha: 1.0)
    
    
    // Font
    static func alegreyaSansFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Alegreya Sans SC", size: pointSize)!
        let scaledFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        return scaledFont
    }
    
    static func setBlueAppearance() {
        UIButton.appearance().tintColor = paleBlue
        
        UINavigationBar.appearance().barTintColor = deepBlue
        let textAttributes = [NSAttributedString.Key.foregroundColor: paleBlue]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        
        
    }
    
}
