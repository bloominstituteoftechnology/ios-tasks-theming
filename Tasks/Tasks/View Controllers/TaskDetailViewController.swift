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
        
        setupCustomAppearance()

        updateViews()
    }
    
    // MARK: - Custom appearance
    
    private func  setupCustomAppearance() {
        // Background
        view.backgroundColor = TasksAppearanceHelper.lightBrown
        nameTextField.font = TasksAppearanceHelper.attackOfCucumbersFont(with: .body, pointSize: 18 )
        notesTextView.font = TasksAppearanceHelper.attackOfCucumbersFont(with: .body, pointSize: 20)
        
        // Label fonts.  There's got to be a better way!
        nameLabel.textColor = TasksAppearanceHelper.navbarBrown
        priorityLabel.textColor = TasksAppearanceHelper.navbarBrown
        notesLabel.textColor = TasksAppearanceHelper.navbarBrown
        
        // Customize segmented control font  Setting the weight seems really involved.
        //let segmentedControlFont: [AnyHashable : Any] = [NSAttributedStringKey.font : (TasksAppearanceHelper.attackOfCucumbersFont(with: .body, pointSize: 12.0))]
        //priorityControl.setTitleTextAttributes(segmentedControlFont, for: .normal)

        
        // Name text field
        nameTextField.backgroundColor = TasksAppearanceHelper.barelyBrown
        nameTextField.layer.borderColor = TasksAppearanceHelper.navbarBrown.cgColor
        nameTextField.layer.borderWidth = 0.5
        nameTextField.layer.cornerRadius = 6.0
        
        // Textview
        notesTextView.backgroundColor = TasksAppearanceHelper.barelyBrown
        notesTextView.layer.borderColor = TasksAppearanceHelper.navbarBrown.cgColor
        notesTextView.layer.borderWidth = 0.5
        notesTextView.layer.cornerRadius = 6.0
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
    
    // How do I set all label colors for this VC?
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    
    
}
