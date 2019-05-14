//
//  CustomLabel.swift
//  Tasks
//
//  Created by Michael Redig on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

class SpacedLabel: UILabel {

	private var _text: String?
	override var text: String? {
		didSet {
			setCharacterSpacing()
		}
	}

	var characterSpacing: Double? {
		didSet {
			setCharacterSpacing()
		}
	}

	private func setCharacterSpacing() {
		if let labelText = text, let spacing = characterSpacing {
			let attributedString = NSMutableAttributedString(string: labelText)
			attributedString.addAttribute(.kern, value: spacing, range: NSRange(location: 0, length: attributedString.length - 1))
			attributedText = attributedString
		}
	}
}
