//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        notesTextView.delegate = self
        nameTextField.delegate = self
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
    
    // MARK: - TextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        nameTextField.layer.borderWidth = 2.0
        nameTextField.layer.borderColor = Appearance.turqoise.cgColor
        nameTextField.layer.cornerRadius = 10
        nameTextField.clipsToBounds = true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameTextField.layer.borderWidth = 0
        nameTextField.layer.borderColor = nil
    }
    
    // MARK: - TextViewDelegate
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        notesTextView.layer.borderWidth = 2.0
        notesTextView.layer.borderColor = Appearance.turqoise.cgColor
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        notesTextView.layer.borderWidth = 0
        notesTextView.layer.borderColor = nil
        
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
        
        styleButton()
        view.backgroundColor = Appearance.darkBlue
        notesTextView.layer.cornerRadius = 10
        notesTextView.clipsToBounds = true
    }
    
    private func styleButton() {
        let cornerRadius = saveButton.frame.height / 2
        saveButton.layer.cornerRadius = cornerRadius
        saveButton.backgroundColor = Appearance.turqoise
        saveButton.tintColor = .white
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
    @IBOutlet weak var saveButton: UIButton!
}
