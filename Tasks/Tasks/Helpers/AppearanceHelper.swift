//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Nelson Gonzalez on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var lightBlueColor = UIColor(red: 150/255, green: 212/255, blue: 243/255, alpha: 1)
    
    static func setupAppearance() {
        //MARK: - Navigation Bar Appearance
        UINavigationBar.appearance().barTintColor = lightBlueColor
        //Set nav bar title color
        let attributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().largeTitleTextAttributes = attributes
        
        //set nav bar button color
        UIBarButtonItem.appearance().tintColor = .white
        
    }
}
