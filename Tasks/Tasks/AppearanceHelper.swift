//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Michael Flowers on 2/7/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

class AppearanceHelper {
    static var badgerRed = UIColor(red: 220/255, green: 87/255, blue: 80/255, alpha: 1)
    static var badgerWhite = UIColor(red: 250/255, green: 250/255, blue: 230/255, alpha: 1)
    
    static func setBadgerColors(){
        
        UIBarButtonItem.appearance().tintColor = badgerRed
        UISegmentedControl.appearance().tintColor = badgerWhite
        
        let textAttributes: [NSAttributedString.Key : Any] = [.foregroundColor : badgerRed]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().barTintColor = badgerWhite
            }
}
