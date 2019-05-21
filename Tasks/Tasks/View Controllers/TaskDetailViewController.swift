//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var notesLable: UILabel!
    @IBOutlet weak var priorityLable: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearances()
        updateViews()
    }
    
    private func setupAppearances() {
        nameTextField.textColor = AppearanceHelper.purpleish
        nameTextField.backgroundColor = AppearanceHelper.tanPink
        nameTextField.layer.borderColor = UIColor(displayP3Red: 61 / 255, green: 35 / 255, blue: 64 / 255, alpha: 1.0).cgColor
        nameTextField.layer.borderWidth = 0.5
        nameTextField.layer.cornerRadius = 8.0
        
        
        view.backgroundColor = AppearanceHelper.tanPink
        
        notesTextView.backgroundColor = AppearanceHelper.lightTanPink
        notesTextView.textColor = AppearanceHelper.purpleish
        notesTextView.layer.borderWidth = 0.5
        notesTextView.layer.borderColor = UIColor(displayP3Red: 61 / 255, green: 35 / 255, blue: 64 / 255, alpha: 1.0).cgColor
        notesTextView.layer.cornerRadius = 8.0
        
        priorityControl.tintColor = AppearanceHelper.backgroundBlue
       
        
        nameLabel.textColor = AppearanceHelper.darkPurpleish
        priorityLable.textColor = AppearanceHelper.darkPurpleish
        notesLable.textColor = AppearanceHelper.darkPurpleish
//        nameLabel.font = AppearanceHelper.typerighterFont(with: .caption1, pointSize: 30)
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
