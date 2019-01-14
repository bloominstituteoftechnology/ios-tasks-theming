//
//  UIColor+CustomColors.swift
//  Tasks
//
//  Created by Julian A. Fordyce on 1/14/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    static let darkSeaGreen = UIColor(144, 198, 149) // this is lighter 
    
    static let summerGreen = UIColor(145, 180, 150) // this is darker

    static let mandang = UIColor(200, 247, 197) // use for text views/fields
    
    
}
