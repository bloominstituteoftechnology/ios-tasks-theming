//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Bradley Yin on 8/12/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    static func setupDarkTheme () {
        UINavigationBar.appearance().barTintColor = .lightGray
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white, .font: beyondWonderlandFont(with: .title1, pointSize: 30)]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: beyondWonderlandFont(with: .title1, pointSize: 30)]
        
        UITableView.appearance().backgroundColor = .darkGray
        UIView.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).backgroundColor = .darkGray
        UILabel.appearance().textColor = .white
        
        UISegmentedControl.appearance().tintColor = .lightGray
    }
    
    static func beyondWonderlandFont (with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Beyond Wonderland", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    static func goodTimesFont (with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Good Times", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
}
