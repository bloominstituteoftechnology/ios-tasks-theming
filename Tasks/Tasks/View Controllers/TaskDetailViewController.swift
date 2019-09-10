//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    let layer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        updateViews()
    }
    
    func setUI() {
        navigationController?.navigationBar.barTintColor = .navBar
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.text]
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.text]
        navigationController?.navigationBar.tintColor = UIColor.red
        
        layer.frame = view.bounds
        layer.colors = [UIColor.navBar.cgColor,
                        UIColor(red:0.18, green:0.18, blue:0.18, alpha:1.00).cgColor]
        view.layer.insertSublayer(layer, at: 0)
        
        nameTextField.backgroundColor = .clear
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.text.cgColor
        nameTextField.layer.cornerRadius = 8
        nameTextField.textColor = .text
        
        priorityControl.tintColor = .text
        
        notesTextView.backgroundColor = .clear
        notesTextView.layer.borderWidth = 2
        notesTextView.layer.borderColor = UIColor.text.cgColor
        notesTextView.layer.cornerRadius = 8
        notesTextView.textColor = .text
        
        
        notesLabel.textColor = .text
        priorityLabel.textColor = .text
        nameLabel.textColor = .text
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
