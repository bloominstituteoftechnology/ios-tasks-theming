//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Alex Shillingford on 8/12/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    static var spotifyGreen = UIColor(red: 86.0/255.0, green: 172.0/255.0, blue: 47.0/255.0, alpha: 1.0)
    static var fireFoxPurple = UIColor(red: 47.0/255.0, green: 50.0/255.0, blue: 149.0/255.0, alpha: 1.0)
    static var terminalBlue = UIColor(red: 50.0/255.0, green: 234.0/255.0, blue: 238.0/255.0, alpha: 1.0)
    static var slackRed = UIColor(red: 225.0/255.0, green: 54.0/255.0, blue: 50.0/255.0, alpha: 1.0)
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func metalMacabreFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Metal Macabre", size: 30)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setCustomAppearance() {
        UINavigationBar.appearance().tintColor = terminalBlue
        UINavigationBar.appearance().barTintColor = fireFoxPurple
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: terminalBlue]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: terminalBlue]
        
        // TableViewController
        UIView.appearance(whenContainedInInstancesOf: [UITableViewController.self]).backgroundColor = backgroundGray
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = slackRed
        
        //ViewController
//        UIView.appearance(whenContainedInInstancesOf: [UIViewController.self]).backgroundColor = backgroundGray
        UILabel.appearance(whenContainedInInstancesOf: [UIViewController.self]).textColor = slackRed
        
        UITextView.appearance().tintColor = terminalBlue
        UITextField.appearance().tintColor = terminalBlue
        
    }
}
