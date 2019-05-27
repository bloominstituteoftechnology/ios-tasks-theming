//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Thomas Cacciatore on 5/27/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    static var specialGreen = UIColor(red: 80.0/255.0, green: 212.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func preciousFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Precious", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
    }
    
    static func setDarkAppearance() {
        UINavigationBar.appearance().barTintColor = backgroundGray
        UISegmentedControl.appearance().tintColor = specialGreen
        UIBarButtonItem.appearance().tintColor = specialGreen
        UILabel.appearance().tintColor = specialGreen
        
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = specialGreen
        UITextView.appearance().tintColor = specialGreen
    }
    
    static func style(button: UIButton) {
        button.titleLabel?.font = preciousFont(with: .callout, pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = specialGreen
        button.layer.cornerRadius = 8
    }
}
