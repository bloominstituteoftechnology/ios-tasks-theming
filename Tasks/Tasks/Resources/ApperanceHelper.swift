//
//  ApperanceHelper.swift
//  Tasks
//
//  Created by Yvette Zhukovsky on 11/12/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Apperance {
    
    static var lightblue = UIColor(red: 53/255.0, green: 155/255.0, blue: 220/255.0, alpha: 0.5)
static var lightpink = UIColor(red:1.00, green:0.71, blue:0.76, alpha:1.0)
    static var turquiose = UIColor(red:0.69, green:0.93, blue:0.93, alpha:1.0)
    static var yellow = UIColor(red:1.00, green:0.84, blue:0.00, alpha:1.0)
    
    
    static func setUpApperance(){
     UINavigationBar.appearance().barTintColor = turquiose
        UIBarButtonItem.appearance().tintColor = lightpink
        UISegmentedControl.appearance().tintColor = yellow
        UISegmentedControl.appearance().backgroundColor = UIColor.blue
        UILabel.appearance().textColor = .green
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
       
       // UIView.appearance().backgroundColor = UIColor.magenta
        UITableViewCell.appearance().backgroundColor = UIColor.yellow
      UIView.appearance(whenContainedInInstancesOf: [UITableView.self]).backgroundColor = UIColor.orange
        
    //UITableViewHeaderFooterView.appearance().backgroundColor = UIColor.orange
        UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().tintColor = UIColor.green
        UITextView.appearance().tintColor = UIColor.green
       // UITableView.appearance().backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)
       // UITextField.appearance().
        //UIView.appearance()
    }
   
    static func applicationFont(pointSize: CGFloat) -> UIFont {
        let result = UIFont(name:"Pacifico", size: pointSize)!
    return result
    }
    
}



