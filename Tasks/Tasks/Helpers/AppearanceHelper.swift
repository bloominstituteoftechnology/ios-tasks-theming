//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jeffrey Santana on 8/12/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearanceHelper {
	static let topBGColor = #colorLiteral(red: 0.003173703328, green: 0.01582367904, blue: 0.01899508573, alpha: 1)
	static let bottomBGColor = #colorLiteral(red: 0.1240772083, green: 0.2987194955, blue: 0.3872755766, alpha: 1)
	
	static func setupAppearance() {
		UIView.appearance(whenContainedInInstancesOf: [UITableView.self]).backgroundColor = bottomBGColor
		UIView.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).backgroundColor = .clear
	}
	
	static func createGradient(on view: UIView) -> CAGradientLayer {
		let gradient = CAGradientLayer()
		
		gradient.frame = view.frame
		gradient.colors = [topBGColor, bottomBGColor]
		
		return gradient
	}
	
	static func configNavBar() {
		UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
		UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
	}
	
	static func homoarakFont(with textstyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
		let font = UIFont(name: "Homoarakhn", size: pointSize)!
		let dynamicFont = UIFontMetrics(forTextStyle: textstyle).scaledFont(for: font)
		return dynamicFont
	}
}
