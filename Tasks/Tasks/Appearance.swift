//
//  Appearance.swift
//  Tasks
//
//  Created by Jason Modisett on 10/2/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var red = UIColor("#E25A4A")
    
    static func setNewAppearance() {
        
        UINavigationBar.appearance().barTintColor = red
        
        let attr = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = attr
        UINavigationBar.appearance().largeTitleTextAttributes = attr
        
        UIBarButtonItem.appearance().tintColor = UIColor.white
    
        UITextField.appearance().tintColor = red
        UITextView.appearance().tintColor = red
        
        UISegmentedControl.appearance().tintColor = red
        UIRefreshControl.appearance().tintColor = UIColor.white
    }
    
}
