//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jonathan Ferrer on 5/20/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {

    static func setBlackAppearance() {

        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        UIBarButtonItem.appearance().tintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        

        let textAttributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes

        UITextView.appearance().font = attackOfTheCucumbersFont(with: .body, pointSize: 17)
        UITextView.appearance().tintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        UITextView.appearance().textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        UITextView.appearance().backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        UITextField.appearance().font = attackOfTheCucumbersFont(with: .body, pointSize: 17)
        UITextField.appearance().tintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        UITextField.appearance().textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        UITextField.appearance().backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)


        UISegmentedControl.appearance().tintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        
        UILabel.appearance().textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        UILabel.appearance().font = attackOfTheCucumbersFont(with: .body, pointSize: 17)

    }


    static func attackOfTheCucumbersFont( with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "attack of the cucumbers", size: pointSize)!

        let dynamicFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)

        return dynamicFont
    }

 

}
