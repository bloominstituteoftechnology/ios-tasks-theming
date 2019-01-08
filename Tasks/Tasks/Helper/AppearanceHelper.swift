//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Ivan Caldwell on 1/7/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

struct AppearanceHelper {
    static var lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func typerighterFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "RM Typerighter medium", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        
        UINavigationBar.appearance().barTintColor = backgroundGray
        UISegmentedControl.appearance().tintColor = lambdaRed
        UIBarButtonItem.appearance().tintColor = lambdaRed
        UILabel.appearance().textColor = .black
        
        let navigationFont = UIFont(name: "blackHand_TRIAL Regular", size: 30)!
        
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: navigationFont]
        
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().titleTextAttributes = textAttributes


        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
        
        UITextField.appearance().keyboardAppearance = .dark
    }
    
    static func style(button: UIButton) {
        
        button.titleLabel?.font = AppearanceHelper.typerighterFont(with: .body, pointSize: 30)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = lambdaRed
        
        button.layer.cornerRadius = 8
    }
}
