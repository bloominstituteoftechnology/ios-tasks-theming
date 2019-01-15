//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Julian A. Fordyce on 1/14/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

class AppearanceHelper {
    
    static func setGreenAppearance() {
        UINavigationBar.appearance().barTintColor = UIColor.summerGreen
        UITextView.appearance().tintColor = UIColor.summerGreen
        UITextField.appearance().tintColor = UIColor.summerGreen
    }
    static func vladFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Vladivostok", size: pointSize) else {
            fatalError("Font is nil. Check the name of the font")
        }
        return UIFontMetrics(forTextStyle: .callout).scaledFont(for: font)
    }
}


