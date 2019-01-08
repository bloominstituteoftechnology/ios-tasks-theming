//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Benjamin Hakes on 1/7/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

struct AppearanceHelper {
    
    static let lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static let backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    static let mainTextFont = UIFont(name: "North Face", size: 25)
    static let alternateTextFont = UIFont(name: "Trinigan FG", size: 25)
    static func scaledTextFont (with font: UIFont, textStyle: UIFont.TextStyle, size: CGFloat)->UIFont{
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
    }
    
    static func setDarkAppearance(){
        
        UINavigationBar.appearance().barTintColor = backgroundGray
        UISegmentedControl.appearance().tintColor = lambdaRed
        UIBarButtonItem.appearance().tintColor = lambdaRed
        //        UILabel.appearance().textColor = .white
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
        
        UITextField.appearance().keyboardAppearance = .dark
        
    }
    
    static func enableDynamicText(){
        
        UILabel.appearance().adjustsFontForContentSizeCategory = true
    }
    
    
}
