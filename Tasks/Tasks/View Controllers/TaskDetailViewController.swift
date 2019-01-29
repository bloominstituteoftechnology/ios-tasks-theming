//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var save: UIBarButtonItem!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
        AppearanceHelper.setTypeAppearance()
        updateViews()
    }
    
    func setupAppearance(){
        save.tintColor = UIColor.FlatColor.ColorHunt.DarkPurple .withAlphaComponent(0.7)
        
        self.view.backgroundColor = UIColor.FlatColor.ColorHunt.ClearBlue
        notesTextView.backgroundColor = UIColor.FlatColor.ColorHunt.DarkPurple .withAlphaComponent(0.33)
        notesTextView.layer.cornerRadius = 0.2
        nameTextField.textColor = .white
        notesTextView.textColor = .white
        nameTextField.backgroundColor = UIColor.FlatColor.ColorHunt.DarkPurple .withAlphaComponent(0.33)
        nameLabel.font = UIFont(name: "Vision-Light", size: 16)
        priorityLabel.font = UIFont(name: "Vision-Light", size: 16)
        notesLabel.font = UIFont(name: "Vision-Light", size: 16)
        priorityControl.tintColor = UIColor.FlatColor.ColorHunt.DarkPurple
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
}
