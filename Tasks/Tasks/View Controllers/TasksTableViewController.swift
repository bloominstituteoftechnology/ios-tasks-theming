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
    
    let layer = CAGradientLayer()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setUI()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Properties
    
    private let taskController = TaskController()
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskController.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        
        cell.backgroundColor = .cellBackground
        cell.textLabel?.textColor = .text
        
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
    
    func setUI() {
        navigationController?.navigationBar.barTintColor = .navBar
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.text]
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.text]
        
        var height: CGFloat
        
        if tableView.contentSize.height > view.bounds.height {
            height = tableView.contentSize.height
        } else {
            height = view.bounds.height
        }
        
        layer.frame = CGRect(x: view.bounds.minX, y: view.bounds.minY, width: view.bounds.width, height: height + 300)
        layer.colors = [UIColor.navBar.cgColor,
                        UIColor(red:0.18, green:0.18, blue:0.18, alpha:1.00).cgColor]
        tableView.layer.insertSublayer(layer, at: 0)
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
