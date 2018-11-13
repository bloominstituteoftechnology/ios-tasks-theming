//
//  Appearance Helper.swift
//  Tasks
//
//  Created by Jerrick Warren on 11/12/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum Appearance {
    
    static var michiganBlue = #colorLiteral(red: 0, green: 0.1519076228, blue: 0.2992945313, alpha: 1)
    static var michiganMaize = #colorLiteral(red: 0.9965139031, green: 0.792604506, blue: 0.02251920663, alpha: 1)
    static var michiganTan = #colorLiteral(red: 0.8103260398, green: 0.7535114884, blue: 0.5882748365, alpha: 1)
    static var michiganBeige = #colorLiteral(red: 0.6063866615, green: 0.6027674675, blue: 0.4269524217, alpha: 1)
    static var michiganGray = #colorLiteral(red: 0.5955243707, green: 0.6100042462, blue: 0.5919004083, alpha: 1)
    static var michiganAsh = #colorLiteral(red: 0.6532951593, green: 0.6172346473, blue: 0.5882748365, alpha: 1)
    static var michiganOrange = #colorLiteral(red: 0.8103260398, green: 0.7535114884, blue: 0.5882748365, alpha: 1)
    static var michiganCoolBlue = #colorLiteral(red: 0.3447138667, green: 0.4786932468, blue: 0.7356921434, alpha: 1)
    static var michiganImage = UIImage(named: "Michigan Logo")
    static var salmonColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
    
//    static var michiganBlue = UIColor.init(argb: 0x00274c)
//    static var michiganMaize = UIColor.init(argb: 0xffcb05)
    
   static func customAppearance(){
    
    UINavigationBar.appearance().barTintColor = michiganBlue
    //UINavigationBar.appearance().setBackgroundImage(michiganImage, for: .default)
    
    UIBarButtonItem.appearance().tintColor = michiganMaize
    
    let attributes = [NSAttributedString.Key.foregroundColor : michiganMaize]
    UINavigationBar.appearance().titleTextAttributes = attributes
    UINavigationBar.appearance().largeTitleTextAttributes = attributes
    
    UITableViewCell.appearance().backgroundColor = michiganAsh
    UITableView.appearance().backgroundColor = michiganAsh
    UITableView.appearance().sectionIndexColor = michiganTan
    
    UITableViewCell.appearance().tintColor = 
    
    
    }
    
    
    
}

extension UIColor {
    
    convenience init(argb: UInt) {
        self.init(
            red: CGFloat((argb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((argb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(argb & 0x0000FF) / 255.0,
            alpha: CGFloat((argb & 0xFF000000) >> 24) / 255.0
        )
    }
}
