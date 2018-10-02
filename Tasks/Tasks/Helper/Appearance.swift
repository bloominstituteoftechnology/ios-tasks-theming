//
//  Appearance.swift
//  Tasks
//
//  Created by Daniela Parra on 10/1/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static let coolGray = UIColor(red: 216/255.0, green: 216/255.0, blue: 216/255.0, alpha: 1.0)
    static let black = UIColor(red: 4/255.0, green: 12/255.0, blue: 25/255.0, alpha: 1.0)
    static let lightBlue = UIColor(red: 165/255.0, green: 241/255.0, blue: 244/255.0, alpha: 1.0)
    static let pastelGreen = UIColor(red: 205/255.0, green: 243/255.0, blue: 209/255.0, alpha: 1.0)
    static let pastelRed = UIColor(red: 219/255.0, green: 168/255.0, blue: 153/255.0, alpha: 1.0)
    static let pastelOrange = UIColor(red: 235/255.0, green: 192/255.0, blue: 160/255.0, alpha: 1.0)
    static let paleYellow = UIColor(red: 235/255.0, green: 215/255.0, blue: 142/255.0, alpha: 1.0)
    static let paleGreen = UIColor(red: 205/255.0, green: 237/255.0, blue: 195/255.0, alpha: 1.0)
    
    static func setTheme() {
        UINavigationBar.appearance().barTintColor = Appearance.pastelGreen
        
        let titleFont = Appearance.setTitleFont(with: .title1, pointSize: 20)
        let titleAttributes = [NSAttributedString.Key.font: titleFont]
        
        UINavigationBar.appearance().titleTextAttributes = titleAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = titleAttributes
        
        UIBarButtonItem.appearance().tintColor = Appearance.black
        
        let bodyFont = Appearance.setBodyFont(with: .body, pointSize: 20)
        
        UILabel.appearance().textColor = .white
        UILabel.appearance().font = bodyFont
        
        
        UITextField.appearance().tintColor = Appearance.black
        UITextView.appearance().tintColor = Appearance.black
        
    }
    
    func getImageFrom(gradientLayer:CAGradientLayer) -> UIImage? {
        var gradientImage:UIImage?
        UIGraphicsBeginImageContext(gradientLayer.frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            gradientLayer.render(in: context)
            gradientImage = UIGraphicsGetImageFromCurrentImageContext()?.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch)
        }
        UIGraphicsEndImageContext()
        return gradientImage
    }
    
    //Creates Monsterrat dynamic font.
    static func setTitleFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Montserrat", size: pointSize) else {
            fatalError("The font wasn't found. Check the name again.")
        }
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setBodyFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "VerbCond", size: pointSize) else {
            fatalError("The font wasn't found. Check the name again.")
        }
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}
