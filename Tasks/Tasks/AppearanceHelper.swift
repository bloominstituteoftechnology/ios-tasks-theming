//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jeffrey Carpenter on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    
    static let aqua = #colorLiteral(red: 0.6039215922, green: 0.7882353663, blue: 0.7686275244, alpha: 1)
    static let darkAqua = #colorLiteral(red: 0.4932188788, green: 0.6456671556, blue: 0.6335636728, alpha: 1)
    static let darkGrey = #colorLiteral(red: 0.2784313858, green: 0.2980392277, blue: 0.3215686381, alpha: 1)
    
    static let textAttributes = [NSAttributedString.Key.foregroundColor: darkGrey]
    
    static func kabrioFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Kabrio", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setAppearance() {
        
        UINavigationBar.appearance().barTintColor = aqua
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        UIBarButtonItem.appearance().tintColor = darkGrey
        
        UITableView.appearance().backgroundColor = aqua
        UITableView.appearance().separatorColor = darkGrey
        
        UISegmentedControl.appearance().tintColor = darkGrey
        
        UITextView.appearance().backgroundColor = aqua
        UITextView.appearance().textColor = darkGrey
        UITextView.appearance().layer.borderColor = darkGrey.cgColor
        UITextView.appearance().layer.borderWidth = 0.75
        UITextView.appearance().layer.cornerRadius = 8
        UITextView.appearance().font = kabrioFont(with: .body, pointSize: 18)
        
        UITextField.appearance().backgroundColor = aqua
        UITextField.appearance().textColor = darkGrey
        UITextField.appearance().font = kabrioFont(with: .body, pointSize: 18)
    }
}
