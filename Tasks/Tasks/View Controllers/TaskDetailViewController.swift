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

        setTheme()
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
    
    @IBAction func updatePriority(_ sender: Any) {
        let priorityIndex = priorityControl.selectedSegmentIndex
        let priority = TaskPriority.allPriorities[priorityIndex]
        switch priority {
        case .critical: styleAccents(with: Appearance.criticalPriorityColor)
        case .high: styleAccents(with: Appearance.highPriorityColor)
        case .normal: styleAccents(with: Appearance.normalPriorityColor)
        case .low: styleAccents(with: Appearance.lowPriorityColor)
        }
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
        switch priority {
        case .critical: styleAccents(with: Appearance.criticalPriorityColor)
        case .high: styleAccents(with: Appearance.highPriorityColor)
        case .normal: styleAccents(with: Appearance.normalPriorityColor)
        case .low: styleAccents(with: Appearance.lowPriorityColor)
        }
        priorityControl.selectedSegmentIndex = TaskPriority.allPriorities.index(of: priority)!
        notesTextView.text = task?.notes
    }
    
    private func setTheme() {
        view.backgroundColor = Appearance.darkBackground
        notesTextView.keyboardAppearance = .dark
        notesTextView.layer.cornerRadius = 6
        notesTextView.font = Appearance.applicationFont(with: .caption1, at: 14)
        notesTextView.adjustsFontForContentSizeCategory = true
        nameTextField.font = Appearance.applicationFont(with: .body, at: 16)
        nameTextField.adjustsFontForContentSizeCategory = true

    }
    
    private func styleAccents(with color: UIColor) {
        nameTextField.tintColor = color
        priorityControl.tintColor = color
        notesTextView.tintColor = color
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: color, .font: Appearance.applicationFont(with: .title1, at: 30)]
        navigationController?.navigationItem.backBarButtonItem?.tintColor = color
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
