//
//  ALLTHESUBVIEWS.swift
//  Tasks
//
//  Created by Michael Redig on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

extension UIView {
	func allSubviews() -> Set<UIView> {
		var childSubviews = Set(subviews)
		for subview in subviews {
			childSubviews = childSubviews.union(subview.allSubviews())
		}
		return childSubviews
	}
}
