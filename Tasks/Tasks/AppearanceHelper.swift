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
	static var taskGreen = UIColor(red: 1/255, green: 102/255, blue: 51/255, alpha: 1)
	static var taskbackGroundColor = UIColor(red: 228/255, green: 236/255, blue: 226/255, alpha: 1)
	
	static func ASensibleArmadilloFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
		let font  = UIFont(name: "ASensibleArmadillo", size: pointSize)!
//			print("error: A_Sensible_Armadillo")
//			return nil
//
		return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
	}
	
	static func setDarkGreemAppearance() {
		UINavigationBar.appearance().barTintColor = taskbackGroundColor
		UISegmentedControl.appearance().tintColor = taskGreen
		UIBarButtonItem.appearance().tintColor = taskGreen
	}
	
}
