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
    static var instagramBlue = UIColor(red: 0.0/255.0, green: 116.0/255.0, blue: 208.0/255.0, alpha: 1.0)
    static var lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func typerighterFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "RM Typerighter medium", size: pointSize) else { fatalError("Font is nil. Check the name of the font.") }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
    
    static func setDarkAppearance() {
        
        UINavigationBar.appearance().barTintColor = instagramBlue
        UISegmentedControl.appearance().tintColor = .black
        UIBarButtonItem.appearance().tintColor = .white
        UILabel.appearance().textColor = .black
        
        // Styling the Navigation Title text
        let navigationFont = UIFont(name: "blackHand_TRIAL", size: 40)!
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white,
                              NSAttributedStringKey.font: navigationFont]
                              //NSAttributedStringKey.paragraphStyle: kCAAlignmentCenter] as [NSAttributedStringKey : Any]
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.paragraphStyle: paragraphStyle]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        //textAttributes.textAlignment = kCAAlignmentCenter
        

        // Styling the bar item text.
        let barFont = UIFont(name: "RM Typerighter medium", size: 40)!
        let barTextAttributes = [NSAttributedStringKey.font: barFont]
        UIBarButtonItem.appearance().setTitleTextAttributes(barTextAttributes, for: .normal)
        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
        UITextField.appearance().keyboardAppearance = .dark
        
        // Styling the status bar
        // Added "View controller-based status bar appance = NO" in Info.plist
        // Added "Status Bar Style = UIStatusBarStyleLightContent" in Info.plist
        // This changed the status bar to white.
    }
    
    static func style(button: UIButton) {
        button.titleLabel?.font = AppearanceHelper.typerighterFont(with: .body, pointSize: 30)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        button.layer.cornerRadius = 8
    }
}
