//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Madison Waters on 10/1/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var lightGray = UIColor(red:180.0/255.0, green:180.0/255.0, blue:180.0/255.0, alpha:1.0)
    static var mediumGray = UIColor(red:150.0/255.0, green:150.0/255.0, blue:150.0/255.0, alpha:1.0)
    static var darkGray = UIColor(red:65.0/255.0, green:65.0/255.0, blue:65.0/255.0, alpha:1.0)
    
    static func setAppearance() {
        
    UISegmentedControl.appearance().tintColor = .white
    
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        
        guard let font = UIFont(name: "Coolvetica", size: pointSize)
            else { fatalError("The font was not found. Check the name of the font")}
        
        return UIFontMetrics (forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func style(button: UIButton) {
        
        
    }
}

extension CAGradientLayer {
    
    func gradientColor() -> CAGradientLayer {
        
        //let topColor = UIColor(red: 15.0/255.0, green: 118.0/255.0, blue: 128.0/255.0, alpha: 0.8)
        let topColor = UIColor(red:150.0/255.0, green:150.0/255.0, blue:150.0/255.0, alpha:1.0)
        
        //let bottomColor = UIColor(red: 84.0/255.0, green: 187.0/255.0, blue: 187.0/255.0, alpha: 0.8)
        let bottomColor = UIColor(red:240.0/255.0, green:240.0/255.0, blue:240.0/255.0, alpha:1.0)
        
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations as [NSNumber]
        
        return gradientLayer
    }
}

//MARK: - in the UIView
//let background = CAGradientLayer().gradientColor()
//background.frame = self.view.bounds
//self.view.layer.insertSubLayer(background, atIndex: 0)
