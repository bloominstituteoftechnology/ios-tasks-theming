//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Hector Steven on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit
import Foundation

enum AppearencHelper {
	static var taskGreen = UIColor(red: 30/255, green: 72/255, blue: 10/255, alpha: 1)
	static var taskbackGroundColor = UIColor(red: 228/255, green: 236/255, blue: 226/255, alpha: 1)
	
	static func ASensibleArmadilloFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
		let font  = UIFont(name: "ASensibleArmadillo", size: pointSize)!
		return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
	}
	
	static func setDarkGreemAppearance() {
		UINavigationBar.appearance().barTintColor = taskbackGroundColor
		UISegmentedControl.appearance().tintColor = taskGreen
		UIBarButtonItem.appearance().tintColor = taskGreen
		
		let font = ASensibleArmadilloFont(with: .caption1, pointSize: 35)
		let textAttributes = [NSAttributedString.Key.foregroundColor: taskGreen, NSAttributedString.Key.font: font]
		
		UIBarButtonItem.appearance().setTitleTextAttributes(textAttributes, for: .normal)
		UINavigationBar.appearance().titleTextAttributes = textAttributes
		UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
		UITextView.appearance().tintColor = taskGreen
		UITextField.appearance().tintColor = taskGreen
		UILabel.appearance().tintColor = taskGreen
		
	}
	static func style(cell: UITableViewCell) {
		cell.textLabel?.font = AppearencHelper.ASensibleArmadilloFont(with: .caption1, pointSize: 31)
		cell.textLabel?.backgroundColor = .clear
		cell.textLabel?.textColor = AppearencHelper.taskGreen
		cell.backgroundColor = AppearencHelper.taskbackGroundColor
	}
	
	static func style(button: UIButton) {
		button.backgroundColor = .clear
		button.tintColor = taskGreen
	}
	
	static func style(textView: UITextView) {
		textView.backgroundColor = taskbackGroundColor
		textView.font = ASensibleArmadilloFont(with: .caption2, pointSize: 30)
		textView.tintColor = taskGreen
		textView.layer.borderWidth = 1
		textView.layer.borderColor = taskGreen.cgColor
		textView.layer.cornerRadius = 14
	}
	
	static func style(textField: UITextField) {
		textField.backgroundColor = taskbackGroundColor
		textField.font = ASensibleArmadilloFont(with: .caption1, pointSize: 24)
		textField.tintColor = taskGreen
		textField.layer.borderWidth = 1
		textField.layer.borderColor = taskGreen.cgColor
		textField.layer.cornerRadius = 8
	}
	
	static func style(label: UILabel) {
		label.backgroundColor = taskbackGroundColor
		label.font = ASensibleArmadilloFont(with: .caption1, pointSize:30)
		label.tintColor = taskGreen
//		label.layer.borderWidth = 1
//		label.layer.borderColor = taskGreen.cgColor
		label.layer.cornerRadius = 8
	}
	
}
