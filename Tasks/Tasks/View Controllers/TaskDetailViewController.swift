//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

	// MARK: Properties

	var task: Task? {
		didSet {
			updateViews()
		}
	}

	var taskController: TaskController!

	@IBOutlet var nameTextField: UITextField!
	@IBOutlet var priorityControl: UISegmentedControl!
	@IBOutlet var notesTextView: UITextView!
	@IBOutlet weak var viewForNameDetails: UIView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var priorityLabel: UILabel!
	@IBOutlet weak var notesLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
		setUpUI()
    }

    @IBAction func save(_ sender: Any) {
        guard let name = nameTextField.text, !name.isEmpty else {
            return
        }

        let priorityIndex = priorityControl.selectedSegmentIndex
        let priority = TaskPriority.allPriorities[priorityIndex]
        let notes = notesTextView.text

        if let task = task {
            // Editing existing task
            taskController.update(task: task, with: name, notes: notes, priority: priority)
        } else {
            taskController.createTask(with: name, notes: notes, priority: priority)
        }

        navigationController?.popViewController(animated: true)
    }

    private func updateViews() {
        guard isViewLoaded else { return }

        title = task?.name ?? "Create Task"
        nameTextField.text = task?.name
        let priority: TaskPriority
        if let taskPriority = task?.priority {
            priority = TaskPriority(rawValue: taskPriority)!
        } else {
            priority = .normal
        }
        priorityControl.selectedSegmentIndex = TaskPriority.allPriorities.firstIndex(of: priority)!
        notesTextView.text = task?.notes
    }

	private func setUpUI() {
		view.backgroundColor = AppearanceHelper.mainBGColor
		AppearanceHelper.styleTextView(textView: notesTextView)
		priorityControl.tintColor = AppearanceHelper.buttonAndTintColor
		viewForNameDetails.backgroundColor = AppearanceHelper.textFieldBGColor
		viewForNameDetails.layer.cornerRadius = 8
		[nameLabel, priorityLabel, notesLabel].forEach { AppearanceHelper.styleLabels(label: $0) }
		nameTextField.tintColor = AppearanceHelper.buttonAndTintColor
		nameTextField.textColor = AppearanceHelper.lightTextColor
		nameTextField.keyboardAppearance = .dark
	}
}
