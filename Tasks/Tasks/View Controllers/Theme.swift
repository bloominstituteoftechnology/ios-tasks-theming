//
//  Theme.swift
//  Tasks
//
//  Created by Lotanna Igwe-Odunze on 1/7/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

struct Theme {
    
    static let paleGold = UIColor(red: 241/255, green: 191/255, blue: 152/255, alpha: 1.0)
    static let bone = UIColor(red: 225/255, green: 244/255, blue: 203/255, alpha: 1.0)
    static let ashGrey = UIColor(red: 186/255, green: 203/255, blue: 169/255, alpha: 1.0)
    static let nickel = UIColor(red: 113/255, green: 117/255, blue: 104/255, alpha: 1.0)
    static let rifleGreen = UIColor(red: 63/255, green: 71/255, blue: 57/255, alpha: 1.0)
    static let pigmentBlue = UIColor(red: 34/255, green: 34/255, blue: 153/255, alpha: 1.0)
    static let spaceCadet = UIColor(red: 28/255, green: 23/255, blue: 78/255, alpha: 1.0)
    static let napierGreen = UIColor(red: 40/255, green: 129/255, blue: 16/255, alpha: 1.0)

    
    static func applyTheme() {
        
        //UIAppearance changes
        UINavigationBar.appearance().barTintColor = napierGreen
        UINavigationBar.appearance().tintColor = paleGold
        //UITableViewCell.appearance().backgroundColor = paleGold
        UISegmentedControl.appearance().tintColor = paleGold
        
        //Specific Changes
        

    }
}
