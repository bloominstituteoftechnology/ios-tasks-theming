//
//  Appearance.swift
//  Tasks
//
//  Created by Linh Bouniol on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var lightPink = UIColor(red: 255.0/255.0, green: 210.0/255.0, blue: 230.0/255.0, alpha: 1.0)
    static var mediumPink = UIColor(red: 255.0/255.0, green: 148.0/255.0, blue: 210.0/255.0, alpha: 1.0)
    static var brightPink = UIColor(red: 255.0/255.0, green: 85.0/255.0, blue: 198.0/255.0, alpha: 1.0)
    static var darkBlue = UIColor(red: 30.0/255.0, green: 48.0/255.0, blue: 87.0/255.0, alpha: 1.0)
    
    static func setupPinkAppearance() {
        
        UINavigationBar.appearance().barTintColor = brightPink
        
        // NavBar title
        let textAttributes = [NSAttributedStringKey.foregroundColor : darkBlue]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UIBarButtonItem.appearance().tintColor = darkBlue
        
        
//        UILabel.appearance().textColor = brightPink
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Berylium", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
}
