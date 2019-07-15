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
        setUpAppearances()
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
        
        priorityControl.addTarget(self, action: #selector(priorityControlDidChangeValue(sender:)), for: .valueChanged)
    }
    
    @objc func priorityControlDidChangeValue(sender: UISegmentedControl) {
        switch priorityControl.selectedSegmentIndex {
        case 0 :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.lowGreen
        case 1 :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.mediumYellow
            
        case 2 :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.highOrange
        case 3 :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.criticalRed
        default :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.deepBlue
        
        }
        
    }
    
    func setUpAppearances() {
        notesTextView.font = AppearanceHelper.alegreyaSansFont(with: .caption1, pointSize: 25)
        notesTextView.layer.borderColor = AppearanceHelper.deepBlue.cgColor
        notesTextView.layer.borderWidth = 0.5
        notesTextView.layer.cornerRadius = 8
        view.backgroundColor = AppearanceHelper.paleBlueFontColor
        notesTextView.backgroundColor = AppearanceHelper.paleBlueFontColor
        
        switch task?.priority {
        case "normal" :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.mediumYellow

        case "high" :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.highOrange
        case "critical" :
            navigationController?.navigationBar.barTintColor = AppearanceHelper.criticalRed
        default:
            navigationController?.navigationBar.barTintColor = AppearanceHelper.lowGreen
        }
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


