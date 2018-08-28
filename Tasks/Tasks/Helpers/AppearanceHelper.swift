//
//  Appearance.swift
//  Tasks
//
//  Created by Linh Bouniol on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var yellow = UIColor(red: 252.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var orange = UIColor(red: 255.0/255.0, green: 174.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var lime = UIColor(red: 101.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var cyan = UIColor(red: 94.0/255.0, green: 255.0/255.0, blue: 248.0/255.0, alpha: 1.0)
    static var pink = UIColor(red: 255.0/255.0, green: 15.0/255.0, blue: 235.0/255.0, alpha: 1.0)
    static var purple = UIColor(red: 177.0/255.0, green: 111.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static var darkBlue = UIColor(red: 30.0/255.0, green: 48.0/255.0, blue: 87.0/255.0, alpha: 1.0)
    
    static func setupCitrusAppearance() {
        
        let gradient = CAGradientLayer()
        var bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1.0)
        gradient.frame = bounds
        gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        
        if let image = getImageFrom(gradientLayer: gradient) {
//            UINavigationBar.appearance().setBackgroundImage(image, for: .default)
            UINavigationBar.appearance().barTintColor = UIColor(patternImage: image)
        }
            
//        UINavigationBar.appearance().barTintColor = darkBlue
        
        // NavBar title
        let textAttributes = [NSAttributedStringKey.foregroundColor : orange]
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        
        UIBarButtonItem.appearance().tintColor = orange
        
        // Table view
        UITableView.appearance().backgroundColor = darkBlue
        UITableViewCell.appearance().backgroundColor = darkBlue
        
        
        // Label text
        UILabel.appearance().textColor = cyan
        
        // Text field/view I-cursor
        UITextField.appearance().tintColor = cyan
        UITextView.appearance().tintColor = cyan
        
        // Text field keyboard
        UITextField.appearance().keyboardAppearance = .dark
        
        // Segmented control
        UISegmentedControl.appearance().tintColor = orange
    }
    
    // Custom Font
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "Berylium", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
    
    static func getImageFrom(gradientLayer:CAGradientLayer) -> UIImage? {
        var gradientImage:UIImage?
        UIGraphicsBeginImageContext(gradientLayer.frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            gradientLayer.render(in: context)
            gradientImage = UIGraphicsGetImageFromCurrentImageContext()?.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .tile)
        }
        UIGraphicsEndImageContext()
        return gradientImage
    }
}
