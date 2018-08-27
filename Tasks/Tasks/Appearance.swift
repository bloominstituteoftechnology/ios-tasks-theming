//
//  Appearance.swift
//  Tasks
//
//  Created by William Bundy on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import Foundation
import UIKit

enum Appearance
{
	static func hexToColor(_ color:UInt32) -> UIColor
	{
		let r = color >> 24
		let g = (color >> 16) & 0xFF
		let b = (color >> 8) & 0xFF
		let a = color & 0xFF;
		return UIColor(red:CGFloat(r) / 255.0,
					   green:CGFloat(g) / 255.0,
					   blue:CGFloat(b) / 255.0,
					   alpha:CGFloat(a)/255.0)
	}

	// based on the vim classic, "wombat"
	static var salmon = hexToColor(  0xe5786dFF)
	static var grass = hexToColor(   0xcae682FF)
	static var skies = hexToColor(   0x8ac6f2FF)
	static var cream = hexToColor(   0xf6f3e8ff)
	static var penumbra = hexToColor(0x384048ff)
	static var umbra = hexToColor(   0x242424ff)
	static var grey = hexToColor(    0x656875FF)

	static func applyWombatTheme()
	{
		// table view cell background
		// table view background
		UITableView.appearance().backgroundColor = umbra;
		UITableViewCell.appearance().backgroundColor = umbra;
		UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = cream
		UITableViewHeaderFooterView.appearance().backgroundColor = grey
		UILabel.appearance(whenContainedInInstancesOf: [UITableViewHeaderFooterView.self]).textColor = grass

		// navigation bar font (Roboto Slab)
		let attribs:[NSAttributedStringKey:Any] = [NSAttributedStringKey.foregroundColor: Appearance.cream,
					   NSAttributedStringKey.font: getTitleFont(48.0, style: UIFontTextStyle.largeTitle)]
		UINavigationBar.appearance().titleTextAttributes = attribs
		UINavigationBar.appearance().largeTitleTextAttributes = attribs
		UINavigationBar.appearance().backgroundColor = penumbra
		UINavigationBar.appearance().tintColor = penumbra
		UINavigationBar.appearance().barTintColor = penumbra
		UIBarButtonItem.appearance().tintColor = grass

		// segmented control
		UISegmentedControl.appearance().tintColor = salmon
		UILabel.appearance(whenContainedInInstancesOf: [TaskDetailViewController.self]).textColor = cream
		// text field
		UITextField.appearance().backgroundColor = penumbra
		UITextField.appearance().textColor = cream
		UITextField.appearance().tintColor = skies
		// textview
		UITextView.appearance().backgroundColor = penumbra
		UITextView.appearance().tintColor = skies
		UITextView.appearance().textColor = cream

		// button
	}

	static func getTitleFont(_ pointSize:CGFloat=16.0, style:UIFontTextStyle = .caption1) -> UIFont
	{
		let font = UIFont(name: "Roboto Slab", size: pointSize)!
		return UIFontMetrics(forTextStyle: style).scaledFont(for: font)
	}

}
