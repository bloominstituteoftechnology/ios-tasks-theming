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

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
		setupAppearance()
    }

	private func setupAppearance() {
		nameTextField.layer.borderColor = UIColor.white.cgColor
		nameTextField.layer.borderWidth = 0.5
		nameTextField.layer.cornerRadius = 8

		notesTextView.font = AppearanceHelper.bodyFont(with: .body, pointSize: 18)

		for subview in view.allSubviews() {
			if let vfxView = subview as? UIVisualEffectView {
//				vfxView.layer.cornerRadius = 25
				for subvfx in vfxView.subviews {
					subvfx.layer.cornerRadius = 8
				}
			}
		}
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
            task.name = name
            task.priority = priority.rawValue
            task.notes = notes
            taskController.put(task: task)
        } else {
            let task = Task(name: name, notes: notes, priority: priority)
            taskController.put(task: task)
        }
        
        do {
            let moc = CoreDataStack.shared.mainContext
            try moc.save()
        } catch {
            NSLog("Error saving managed object context: \(error)")
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
        priorityControl.selectedSegmentIndex = TaskPriority.allPriorities.index(of: priority)!
        notesTextView.text = task?.notes
    }

}
