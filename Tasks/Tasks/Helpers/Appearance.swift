//
//  Appearance.swift
//  Tasks
//
//  Created by Scott Bennett on 10/1/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var scottBlue = UIColor(red: 26.0/255.0, green: 153.0/255.0, blue: 252.0/255.0, alpha: 1.0)
    static var scottOrange = UIColor(red: 253.0/255.0, green: 170.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var scottDarkOrange = UIColor(red: 217.0/255.0, green: 121.0/255.0, blue: 30.0/255.0, alpha: 1.0)
    static var scottDarkBlue = UIColor(red: 50.0/255.0, green: 50.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    
    static func setScottAppearance() {
        UINavigationBar.appearance().barTintColor = scottBlue
        
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().largeTitleTextAttributes = attributes
                
        UIBarButtonItem.appearance().tintColor = scottDarkBlue
        
        UILabel.appearance().textColor = .white
        UILabel.appearance().font = applicationFont(with: .caption1, pointSize: 17)
        
        UITextField.appearance().tintColor = scottOrange
        UITextView.appearance().tintColor = scottOrange
    }
    
    static func applicationFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Quikhand", size: pointSize) else { fatalError("The font wasn't found.  Check the name of the font.")}
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }

}
