//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Ivan Caldwell on 1/14/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

struct AppearanceHelper {
    // Website to for color selection: http://www.flatuicolorpicker.com/blue-rgba-color-code
    static var ebonyClay = UIColor(red: 107.0/255.0, green: 185.0/255.0, blue: 240.0/255.0, alpha: 1.0)
   
    // Adds a font? (from: https://www.1001fonts.com/)
    // I don't know why this function is needed...

    
    static func setStyle(){
        UINavigationBar.appearance().barTintColor = ebonyClay
        
        // Styling Naviagatiion Title
        let stencilFont = UIFont(name: "Octin Stencil", size: 50)!
        let typerighterFont = UIFont(name: "Courier", size: 20)!
        let navigationBarAttributes = [NSAttributedStringKey.foregroundColor: UIColor.green,
                                       NSAttributedStringKey.font: stencilFont]
        UINavigationBar.appearance().titleTextAttributes = navigationBarAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = navigationBarAttributes
        
        
        // Styling Navigation Bar Items
        let barButtonAttributes = [NSAttributedStringKey.foregroundColor: UIColor.gray,
                                   NSAttributedStringKey.font: stencilFont.withSize(20)]
        UIBarButtonItem.appearance().setTitleTextAttributes(barButtonAttributes, for: .normal)
        
        // Styling Text Fields
        
        // Styling Text Views
        UITextView.appearance().backgroundColor = UIColor.lightGray
        
        // Styling Labels
        let labelAttributes = [NSAttributedStringKey.foregroundColor: UIColor.gray,
                                NSAttributedStringKey.font: typerighterFont]
        UILabel.appearance().font = typerighterFont
        // Styling something something else.
    }
}
