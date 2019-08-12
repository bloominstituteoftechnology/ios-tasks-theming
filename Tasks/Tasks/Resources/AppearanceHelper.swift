//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Marlon Raskin on 8/12/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {

	static var mainBGColor = UIColor(red: 0.05, green: 0.04, blue: 0.34, alpha: 1.00)
	static var darkerAccentBGColor = UIColor(red: 0.04, green: 0.03, blue: 0.26, alpha: 1.00)
	static var lightTextColor = UIColor(red: 0.75, green: 1.00, blue: 0.95, alpha: 1.00)
	static var textFieldBGColor = UIColor(red: 0.04, green: 0.24, blue: 0.43, alpha: 1.00)
	static var buttonAndTintColor = UIColor(red: 0.01, green: 1.00, blue: 0.79, alpha: 1.00)
	static var subtleAccentColor = UIColor(red: 0.19, green: 0.24, blue: 0.46, alpha: 1.00)

	static func setTheme() {
		UINavigationBar.appearance().tintColor = buttonAndTintColor
		UINavigationBar.appearance().barTintColor = mainBGColor
		UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: lightTextColor]
		UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: lightTextColor]

		UITableView.appearance().backgroundColor = mainBGColor
		UITableViewCell.appearance().tintColor = buttonAndTintColor
		UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = lightTextColor
	}

	static func styleTextView(textView: UITextView) {
		textView.backgroundColor = AppearanceHelper.darkerAccentBGColor
		textView.textColor = lightTextColor
//		textView.font = typeWriterFont(with: .body, pointSize: 25)
		textView.layer.borderWidth = 0.5
		textView.layer.borderColor = subtleAccentColor.cgColor
		textView.layer.cornerRadius = 8
		textView.keyboardAppearance = .dark
		textView.tintColor = buttonAndTintColor
		textView.contentInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
	}

	static func styleLabels(label: UILabel) {
		label.textColor = lightTextColor
	}





}

