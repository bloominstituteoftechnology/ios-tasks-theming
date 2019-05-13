//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Michael Redig on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit


enum AppearanceHelper {
	static let backgroundColor = UIColor(red: 21/255, green: 17/255, blue: 16/255, alpha: 1)
	static let backgroundColorSemiTransparent = UIColor(red: 21/255, green: 17/255, blue: 16/255, alpha: 0.5)
	static let accentRed = UIColor(red: 181/255, green: 33/255, blue: 23/255, alpha: 1)


	static func setupAppearance() {
		UISegmentedControl.appearance().tintColor = accentRed
		UILabel.appearance().textColor = .white
		UIBarButtonItem.appearance().tintColor = accentRed

		UITableViewCell.appearance().backgroundColor = .clear
		UITableView.appearance().backgroundColor = .clear
		UITableViewHeaderFooterView.appearance().tintColor = accentRed

		let textAttributes = [NSAttributedString.Key.foregroundColor: accentRed]
		UINavigationBar.appearance().titleTextAttributes = textAttributes
		UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
		UINavigationBar.appearance().barTintColor = backgroundColor

		UITextView.appearance().tintColor = accentRed
		UITextView.appearance().textColor = accentRed
		UITextView.appearance().backgroundColor = .clear

		UITextField.appearance().tintColor = accentRed
		UITextField.appearance().textColor = .white
		UITextField.appearance().backgroundColor = .clear
	}
}
