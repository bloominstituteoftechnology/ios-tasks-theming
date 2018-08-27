//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Conner on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

let sectionTitles = ["Critical!", "High", "Medium", "Low"]
let sectionImageList = [#imageLiteral(resourceName: "warning"), #imageLiteral(resourceName: "star"), #imageLiteral(resourceName: "circle"), #imageLiteral(resourceName: "dash")]

enum Appearance {
  static func setupAppearance() {
    let darkBlack = UIColor(red: 0.14, green: 0.14, blue: 0.14, alpha: 1.0)
    
    UINavigationBar.appearance().barTintColor = darkBlack
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    UIBarButtonItem.appearance().tintColor = .white
  }
  
  static func setupTableViewSectionHeaders(section: Int) -> UIView {
    let view = UIView()
    let image = UIImageView(image: sectionImageList[section])
    image.frame = CGRect(x: 5, y: 5, width: 35, height: 35)
    view.addSubview(image)
    
    let label = UILabel()
    label.text = sectionTitles[section]
    label.textColor = .white
    label.frame = CGRect(x: 45, y: 5, width: 100, height: 35)
    view.addSubview(label)
    
    if section == 0 {
      view.backgroundColor = UIColor(red:0.95, green:0.15, blue:0.07, alpha:0.75)
    } else if section == 1 {
      view.backgroundColor = UIColor(red:0.34, green:0.45, blue:0.60, alpha:1.0)
    } else if section == 2 {
      view.backgroundColor = UIColor(red:0.74, green:0.84, blue:0.92, alpha:1.0)
    } else if section == 3 {
      view.backgroundColor = UIColor(red:0.97, green:0.97, blue:1.00, alpha:1.0)
    }
    
    return view
  }
}
