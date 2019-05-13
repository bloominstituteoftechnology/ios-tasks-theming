//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Hector Steven on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

enum AppearencHelper {
	static var taskGreen = UIColor(red: 1/255, green: 102/255, blue: 51/255, alpha: 1)
	static var taskbackGroundColor = UIColor(red: 83/255, green: 87/255, blue: 81/255, alpha: 1)
	
	static func ASensibleArmadilloFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont? {
		guard let font  = UIFont(name: "A_Sensible_Armadillo", size: pointSize) else {
			print("error: A_Sensible_Armadillo")
			return nil
		}
		return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
	}
	
	
	
}
