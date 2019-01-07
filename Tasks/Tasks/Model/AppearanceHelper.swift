//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Austin Cole on 1/7/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

extension UILabel{
    var defaultFont: UIFont? {
        get { return self.font }
        set { self.font = newValue }
    }
}

struct AppearanceHelper {
    static func navBarColor() -> UIColor {
        var deepRed = UIColor(red: 200.0/255.0, green: 1.0/255.0, blue: 1.0/255.0, alpha: 1.0)
        return deepRed
    }
    func labelFont() -> UIFont {
        let font = UIFont(name: "JeanSunHo", size: 30)
        guard let labelFont = font else {fatalError("Could not unwrap labelFont")}
        return labelFont
    }
}
