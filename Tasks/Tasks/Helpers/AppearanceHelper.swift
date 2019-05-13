//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by morse on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    static var deepPurple = UIColor(red: 36.0/255.0, green: 0.0, blue: 86.0/255.0, alpha: 1.0)
    static var greyText = UIColor(red: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, alpha: 1.0)
    
    static func expresswayFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Expressway", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setDeepPurple() {
        UINavigationBar.appearance().barTintColor = deepPurple
        UISegmentedControl.appearance().tintColor = greyText
        UIBarButtonItem.appearance().tintColor = greyText
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: greyText]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UITextField.appearance().tintColor = greyText
        UITextView.appearance().tintColor = greyText
    }
    
//    static func style(button: UIButton) {
//        button.titleLabel?.font = expresswayFont(with: .callout, pointSize: 30)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = greyText
//        button.layer.cornerRadius = 8
//    }
}
