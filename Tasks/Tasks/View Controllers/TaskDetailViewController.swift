//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAppearances()
        self.updateViews()
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
    
    private func setupAppearances() {
        self.view.backgroundColor = AppearanceHelper.darkBlue
        self.nameTextField.font = AppearanceHelper.newYorkMediumFont(with: .body, pointSize: 20)
        self.notesTextView.font = AppearanceHelper.newYorkMediumFont(with: .body, pointSize: 20)
        self.nameLabel.font = AppearanceHelper.newYorkMediumFont(with: .headline, pointSize: 22)
        self.priorityLabel.font = AppearanceHelper.newYorkMediumFont(with: .headline, pointSize: 22)
        self.notesLabel.font = AppearanceHelper.newYorkMediumFont(with: .headline, pointSize: 22)
        
        self.nameTextField.backgroundColor = .clear
        self.notesTextView.backgroundColor = .clear
        
        self.nameTextField.textColor = AppearanceHelper.slightWhite
        self.notesTextView.textColor = AppearanceHelper.slightWhite
        self.nameLabel.textColor = AppearanceHelper.slightWhite
        self.priorityLabel.textColor = AppearanceHelper.slightWhite
        self.notesLabel.textColor = AppearanceHelper.slightWhite
        
        self.nameTextField.layer.borderColor = AppearanceHelper.slightWhite.cgColor
        self.notesTextView.layer.borderColor = AppearanceHelper.slightWhite.cgColor
        
        self.nameTextField.layer.borderWidth = 0.5
        self.notesTextView.layer.borderWidth = 0.5
        
        self.nameTextField.layer.cornerRadius = 10.0
        self.notesTextView.layer.cornerRadius = 10.0
        
        self.nameTextField.keyboardAppearance = .dark
        self.notesTextView.keyboardAppearance = .dark
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
    
    // MARK: Properties
    
    var task: Task? {
        didSet {
            updateViews()
        }
    }
    
    var taskController: TaskController!

    @IBOutlet var notesLabel: UILabel!
    @IBOutlet var priorityLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var priorityControl: UISegmentedControl!
    @IBOutlet var notesTextView: UITextView!
}
