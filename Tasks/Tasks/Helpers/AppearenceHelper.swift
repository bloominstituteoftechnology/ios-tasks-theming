//
//  AppearenceHelper.swift
//  Tasks
//
//  Created by Corey Sessions on 6/19/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearenceHelper {
    static var greenMachine = UIColor(red: 55/255, green: 197/255, blue: 39/255, alpha: 1.0)
    static var backGroundGray = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1.0)
    
    static func armaliteRifleFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Armalite Rifle", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
    }
    
    static func setDarkAppearence() {
        UINavigationBar.appearance().barTintColor = backGroundGray
        UISegmentedControl.appearance().tintColor = greenMachine
        UIBarButtonItem.appearance().tintColor    = greenMachine
        UITextField.appearance().tintColor        = greenMachine
        
        let textAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : armaliteRifleFont(with: .largeTitle, pointSize: 32)]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
    }
    
    static func style(button: UIButton) {
        button.titleLabel?.font = armaliteRifleFont(with: .callout, pointSize: 30)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = self.greenMachine
        button.layer.cornerRadius = button.frame.height / 2
    }
}
