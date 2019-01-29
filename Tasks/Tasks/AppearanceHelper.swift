//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Julian A. Fordyce on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static func clevelandFont(pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Cleveland-DEMO", size: pointSize)!
        return font
    }
    
    static func setCustomAppearance() {
        

    let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.cloudsColor ]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UINavigationBar.appearance().barTintColor = UIColor.darkishPurple
    
    }
}
