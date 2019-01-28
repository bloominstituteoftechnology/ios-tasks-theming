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
        setUpAppearance()
        updateViews()
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
    
    private func setUpAppearance() {
        nameLabel.font = AppearanceHelper.ottoFont(with: .title1, pointSize: 50)
        priorityLabel.font = AppearanceHelper.ottoFont(with: .title1, pointSize: 50)
        notesLabel.font = AppearanceHelper.ottoFont(with: .title1, pointSize: 50)
        
        nameLabel.textColor = AppearanceHelper.darkBlue
        priorityLabel.textColor = AppearanceHelper.darkBlue
        notesLabel.textColor = AppearanceHelper.darkBlue
        
        nameTextField.layer.borderColor = AppearanceHelper.greenBlue.cgColor
        nameTextField.layer.borderWidth = 0.5
        nameTextField.layer.cornerRadius = 10
        
        notesTextView.layer.borderColor = AppearanceHelper.greenBlue.cgColor
        notesTextView.layer.borderWidth = 0.5
        notesTextView.layer.cornerRadius = 10
        
        nameTextField.font = AppearanceHelper.ottoFont(with: .body, pointSize: 40)
        notesTextView.font = AppearanceHelper.ottoFont(with: .body, pointSize: 40)
    }
    
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
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var priorityLabel: UILabel!
    
    
    @IBOutlet weak var notesLabel: UILabel!
    
}
