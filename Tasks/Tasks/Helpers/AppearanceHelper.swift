//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Nathanael Youngren on 2/4/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
    
    static var beige = UIColor(red: 246/255, green: 254/255, blue: 219/255, alpha: 1)
    static var tuscan = UIColor(red: 230/255, green: 211/255, blue: 163/255, alpha: 1)
    static var straw = UIColor(red: 216/255, green: 209/255, blue: 116/255, alpha: 1)
    static var middleGreenYellow = UIColor(red: 182/255, green: 196/255, blue: 84/255, alpha: 1)
    static var citron = UIColor(red: 145/255, green: 151/255, blue: 42/255, alpha: 1)
    
    static func generalStyle() {
        UINavigationBar.appearance().backgroundColor = citron
        let textAttr: [NSAttributedString.Key: Any] = [.foregroundColor: beige]
        UINavigationBar.appearance().titleTextAttributes = textAttr
        UINavigationBar.appearance().largeTitleTextAttributes = textAttr
        UIBarButtonItem.appearance().tintColor = tuscan
        UINavigationBar.appearance().barTintColor = citron
        UISegmentedControl.appearance().tintColor = tuscan
    }
    
    
    
}
