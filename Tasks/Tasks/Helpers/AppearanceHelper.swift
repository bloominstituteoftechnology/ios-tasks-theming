//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Moin Uddin on 10/1/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum Appearance {
    static var darkBlue = UIColor(red: 19.0/255.0, green: 35.0/255.0, blue: 86.0/255.0, alpha: 1.0)
    static var royalBlue = UIColor(red: 21.0/255.0, green: 51.0/255.0, blue: 145.0/255.0, alpha: 1.0)
    
    static func setDarkBlueAppearance() {
        UINavigationBar.appearance().barTintColor = royalBlue
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().largeTitleTextAttributes = attributes
        
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .selected)
        
        UIBarButtonItem.appearance().tintColor = .white
        
        UITableViewCell.appearance().backgroundColor = darkBlue
        UITableView.appearance().backgroundColor = darkBlue
        UITextView.appearance().backgroundColor = .white
        UITextField.appearance().backgroundColor = .white
        UILabel.appearance().textColor = .white
    }
}
