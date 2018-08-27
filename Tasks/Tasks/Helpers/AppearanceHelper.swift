//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Conner on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
  static func setupAppearance() {
    UINavigationBar.appearance().barTintColor = UIColor(red: 0.95, green: 0.95, blue: 0.94, alpha: 1.0)
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
    UIBarButtonItem.appearance().tintColor = .black
  }

  static func setupTableViewSectionHeaders(section: Int, sectionName: String) -> UIView {
    let view = UIView()

    let label = UILabel()
    label.text = sectionName
    label.textColor = .white
    label.frame = CGRect(x: 16, y: 5, width: 100, height: 35)
    view.addSubview(label)

    if section == 0 {
      view.backgroundColor = UIColor(red: 0.95, green: 0.15, blue: 0.07, alpha: 0.75)
    } else if section == 1 {
      view.backgroundColor = UIColor(red: 0.98, green: 0.41, blue: 0.05, alpha: 1.0)
    } else if section == 3 {
      view.backgroundColor = UIColor(red: 0.15, green: 0.65, blue: 0.36, alpha: 1.0)
    } else if section == 2 {
      view.backgroundColor = UIColor(red: 0.27, green: 0.42, blue: 0.70, alpha: 1.0)
    }

    return view
  }
}
