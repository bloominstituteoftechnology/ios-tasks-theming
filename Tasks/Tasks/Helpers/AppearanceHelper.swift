//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by De MicheliStefano on 27.08.18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var darkBlue = UIColor(red:0.13, green:0.18, blue:0.34, alpha:1.0)
    static var mediumBlue = UIColor(red:0.42, green:0.48, blue:0.69, alpha:1.0)
    static var lightBlue = UIColor(red:0.80, green:0.84, blue:0.98, alpha:1.0)
    static var turqoise = UIColor(red:0.11, green:0.79, blue:1.00, alpha:1.0)
    static var backgroundBlue = UIColor(red:0.62, green:0.68, blue:0.93, alpha:1.0)
    
    static func setupNavigation() {
        UINavigationBar.appearance().tintColor = turqoise
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        UINavigationBar.appearance().barTintColor = darkBlue
    }
    
    static func setupViews() {
        //UIView.appearance(whenContainedInInstancesOf:[TaskDetailViewController.self]).backgroundColor = backgroundBlue
        
        UITableViewHeaderFooterView.appearance().textLabel?.tintColor = .white
        UITableViewHeaderFooterView.appearance().tintColor = mediumBlue
        
        UITextView.appearance().backgroundColor = mediumBlue
        UITextView.appearance().textColor = .white
        UITextView.appearance().font = applicationFont(with: .caption2, pointSize: 20)
        UITextView.appearance().layer.borderWidth = 2.0
//        UITextView.appearance().layer.borderColor =  
//
        UITextView.appearance().layer.cornerRadius = 60
        UITextView.appearance().clipsToBounds = true
        
//        UIView.appearance(whenContainedInInstancesOf: [TaskDetailViewController.self]).backgroundColor = mediumBlue
        
        
        UITextField.appearance().backgroundColor = mediumBlue
        UITextField.appearance().textColor = .white
        UITextField.appearance().font = applicationFont(with: .caption2, pointSize: 20)
    }
    
    static func interactiveElements() {
        UISegmentedControl.appearance().tintColor = mediumBlue
        UISegmentedControl.appearance().backgroundColor = lightBlue
        UISegmentedControl.appearance().clipsToBounds = true
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Hurryup", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
}
