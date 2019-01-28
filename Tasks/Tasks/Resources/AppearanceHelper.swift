//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jocelyn Stuart on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var sunYellow = UIColor(red: 252/255, green: 227/255, blue: 0/255, alpha: 1.0)
    static var greenBlue = UIColor(red: 0/255, green: 211/255, blue: 204/255, alpha: 1.0)
    static var darkBlue = UIColor(red: 12/255, green: 0/255, blue: 81/255, alpha: 1.0)
    
    static func ottoFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Otto", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
    }
    
    static func setAppearance() {
        
        let textAttributes = [NSAttributedStringKey.font: ottoFont(with: .largeTitle, pointSize: 90), NSAttributedStringKey.foregroundColor: greenBlue]
        
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UINavigationBar.appearance().barTintColor = darkBlue
        UISegmentedControl.appearance().tintColor = greenBlue
        UIBarButtonItem.appearance().tintColor = greenBlue
        
        UITextView.appearance().tintColor = sunYellow
        UITextField.appearance().tintColor = sunYellow
        
    }
}
