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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAppearances()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskController.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        
        let task = taskController.tasks[indexPath.row]
        cell.textLabel?.text = task.name
        
        style(cell: cell)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = taskController.tasks[indexPath.row]
        
            taskController.delete(task)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    private func style(cell: UITableViewCell) {
        cell.backgroundColor = AppearanceHelper.darkGrey
        cell.layer.cornerRadius = 10.0
        cell.clipsToBounds = true
        
        cell.textLabel?.font = AppearanceHelper.newYorkMediumFont(with: .body, pointSize: 20)
        cell.textLabel?.backgroundColor = .clear
        cell.textLabel?.textColor = AppearanceHelper.slightWhite

    }
    
    private func setupAppearances() {
        self.tableView.backgroundColor = AppearanceHelper.darkBlue
        self.tableView.separatorStyle = .none
        self.tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0);
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
