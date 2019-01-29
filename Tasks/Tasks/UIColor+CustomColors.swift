//
//  UIColor+CustomColors.swift
//  Tasks
//
//  Created by Julian A. Fordyce on 1/28/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    static let cloudsColor =  UIColor(236, 240, 241)
    
    static let darkishPurple = UIColor(44, 44, 84)
    
    static let fountainBlue = UIColor(92, 151, 191)
}
