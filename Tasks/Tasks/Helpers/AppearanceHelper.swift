//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jake Connerly on 8/12/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit


enum AppearanceHelper {
    
    static var backgroundPowder = UIColor(red: 244.0/255.0, green: 245.0/255.0, blue: 247.0/255.0, alpha: 1.0)
    
    static var blueHighlight = UIColor(red: 0/255, green: 118/255, blue: 255/255, alpha: 0.8)
    static var blueTextColor = UIColor(red: 0/255, green: 43/255, blue: 79/255, alpha: 1.0)
    static var headerBlue = UIColor(red: 128/255, green: 182/255, blue: 231/255, alpha: 1.0)
    
    static func fendersFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "SF Chrome Fenders", size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    static func setCustomAppearance() {
        UINavigationBar.appearance().tintColor = blueTextColor
    
        UINavigationBar.appearance().barTintColor = headerBlue
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: blueTextColor, .font: fendersFont(with: .headline, pointSize: 40)]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: blueTextColor, .font: fendersFont(with: .headline, pointSize: 40)]
        UIBarButtonItem.appearance().setTitleTextAttributes([.font : fendersFont(with: .headline, pointSize: 20)], for: .normal)
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = blueTextColor
        UISegmentedControl.appearance().tintColor = blueTextColor
        UISegmentedControl.appearance().setTitleTextAttributes([.font: fendersFont(with: .caption1, pointSize: 20)], for: .normal)
        UITextView.appearance().tintColor = blueTextColor
        UITextField.appearance().tintColor = blueTextColor
        UITableView.appearance().backgroundColor = backgroundPowder
    }
    
    static func style(button: UIButton) {
        button.backgroundColor = blueHighlight
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = fendersFont(with: .callout, pointSize: 20)
        button.layer.cornerRadius = button.bounds.size.width / 2
    }
    
    static func styleTextView(textView: UITextView) {
        textView.backgroundColor = AppearanceHelper.backgroundPowder
        textView.textColor = blueTextColor
        textView.font = fendersFont(with: .body, pointSize: 25)
        textView.layer.borderWidth = 0.5
        textView.layer.borderColor = UIColor.black.cgColor
        textView.layer.cornerRadius = 6
        textView.tintColor = blueTextColor
    }
    
    static func styleLabel(label: UILabel) {
        label.font = fendersFont(with: .caption1, pointSize: 30)
        label.textColor = blueTextColor
    }
    
    
}
