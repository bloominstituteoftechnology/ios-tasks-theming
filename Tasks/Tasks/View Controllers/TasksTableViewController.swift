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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskController.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        
        let task = taskController.tasks[indexPath.row]
        cell.taskNameLabel.text = task.name
        cell.taskDescriptionLabel.text = task.notes
        cell.cellBackgroundView.layer.cornerRadius = 8
        cell.cellBackgroundView.layer.shadowOpacity = 1
        cell.cellBackgroundView.layer.shadowOffset = .zero
        cell.cellBackgroundView.layer.shadowRadius = 2
        
        cell.taskNameLabel.font = AppearanceHelper.alegreyaSansFont(with: .title2, pointSize: 25)
        cell.taskDescriptionLabel.font = AppearanceHelper.alegreyaSansFont(with: .caption1, pointSize: 17)
        
        switch task.priority {
            case "normal" :
                cell.cellBackgroundView.backgroundColor = AppearanceHelper.mediumYellow
                
            case "high" :
                cell.cellBackgroundView.backgroundColor = AppearanceHelper.highOrange
            case "critical" :
                cell.cellBackgroundView.backgroundColor = AppearanceHelper.criticalRed
            default:
                cell.cellBackgroundView.backgroundColor = AppearanceHelper.lowGreen
        }
        
        
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
