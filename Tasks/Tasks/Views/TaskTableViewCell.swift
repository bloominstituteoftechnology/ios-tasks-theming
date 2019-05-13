//
//  TaskTableViewCell.swift
//  Tasks
//
//  Created by Michael Redig on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

	var task: Task? {
		didSet {
			updateViews()
		}
	}

	@IBOutlet weak var victimLabel: SpacedLabel!
	@IBOutlet weak var notesLabel: SpacedLabel!

	private func updateViews() {
		guard let task = task else { return }
		victimLabel.text = task.name
		victimLabel.characterSpacing = 1.5
		victimLabel.font = AppearanceHelper.bodyFont(with: .caption1, pointSize: 18)
		notesLabel.text = task.notes
		notesLabel.characterSpacing = 1.5
		notesLabel.font = AppearanceHelper.bodyFont(with: .caption2, pointSize: 14)
		notesLabel.textColor = AppearanceHelper.accentRed
	}
}
