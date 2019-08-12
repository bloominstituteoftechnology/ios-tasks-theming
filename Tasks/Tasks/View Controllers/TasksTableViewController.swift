//
//  TasksTableViewController.swift
//  Tasks
//
//  Created by Andrew R Madsen on 8/11/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit
import CoreData

class TasksTableViewController: UITableViewController, NSFetchedResultsControllerDelegate {
    
    // MARK: Properties
    
    private let taskController = TaskController()

	// MARK: - Lifecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		AppearanceHelper.setTheme()
		tableView.tableFooterView = UIView()
	}
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskController.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        cell.backgroundColor = AppearanceHelper.mainBGColor
		let task = taskController.tasks[indexPath.row]
        cell.textLabel?.text = task.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = taskController.tasks[indexPath.row]
        
            taskController.delete(task)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowTaskDetail" {
            let detailVC = segue.destination as! TaskDetailViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                detailVC.task = taskController.tasks[indexPath.row]
            }
            detailVC.taskController = taskController
        }
        
        if segue.identifier == "ShowCreateTask" {
            let detailVC = segue.destination as! TaskDetailViewController
            detailVC.taskController = taskController
        }
    }
}
