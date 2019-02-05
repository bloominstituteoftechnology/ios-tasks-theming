import UIKit

class TaskDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearances()
        updateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupAppearances()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupAppearances()
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
    
    private func setupAppearances() {
        view.backgroundColor = .black
      // AppearanceHelper.styleButton(save)  -- add outlet
        
    //     nameTextField.font = AppearanceHelper.godFatherFont(with: .callout, pointSize: 30)
        nameTextField.tintColor = AppearanceHelper.neonGreen
        notesTextView.tintColor = AppearanceHelper.neonGreen
        nameTextField.textColor = AppearanceHelper.neonGreen
        notesTextView.textColor = AppearanceHelper.neonGreen
        priorityControl.tintColor = AppearanceHelper.neonGreen
        navigationItem.rightBarButtonItem?.tintColor = AppearanceHelper.neonGreen
        navigationItem.leftBarButtonItem?.tintColor = AppearanceHelper.neonGreen
        navigationItem.backBarButtonItem?.tintColor = AppearanceHelper.neonGreen
     //   navigationItem  .tintColor = AppearanceHelper.neonGreen
        
        
        
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
