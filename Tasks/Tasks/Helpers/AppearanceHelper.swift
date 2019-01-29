//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Angel Buenrostro on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {

    
    static func style(button: UIButton){
        
    }
    static func setTypeAppearance(){
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.FlatColor.ColorHunt.DarkPurple,
                              NSAttributedString.Key.font: UIFont(name: "Vision-Light", size: 50)]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
        
        
        UITextField.appearance().tintColor = UIColor.FlatColor.ColorHunt.DarkPurple
        UITextView.appearance().tintColor = UIColor.FlatColor.ColorHunt.DarkPurple
    }

    
    static func visionFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Vision-Light", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}


