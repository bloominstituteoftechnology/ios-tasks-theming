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
    static var veryLightBlueColor = UIColor(red: 225/255, green: 243/255, blue: 252/255, alpha: 1)
    
    static func setupAppearance() {
        //MARK: - Navigation Bar Appearance
        UINavigationBar.appearance().barTintColor = lightBlueColor
        //Set nav bar title color
        let attributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().largeTitleTextAttributes = attributes
        
        //set nav bar button color
        UIBarButtonItem.appearance().tintColor = .white
        
     
        //MARK: - segmented controll appearance
        UISegmentedControl.appearance().tintColor = lightBlueColor
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedStringKey.font : applicationFont(with: .body, pointSize: 15)], for: .normal)
        
        //MARK: - keyboard appearance.
        
       UITextField.appearance().keyboardAppearance = .dark
        
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        //click on 'carbon bl.ttf' file then right click; then select 'open with external editor' and copy its name. In info.plist however we have to put the name of the file, i.e. "carbon bl.ttf"
        let result = UIFont(name: "Carbon", size: pointSize)!
        //the size of the font scaled.
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
        
    }
}
