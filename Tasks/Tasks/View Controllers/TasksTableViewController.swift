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
        
        view.backgroundColor = AppearanceHelper.paleBlueFontColor
        tableView.backgroundColor = AppearanceHelper.paleBlueFontColor
        
        addNavBarImage()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        navigationController?.navigationBar.barTintColor = AppearanceHelper.deepBlue
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskController.tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        
        let task = taskController.tasks[indexPath.row]
        cell.backgroundColor = AppearanceHelper.paleBlueFontColor
        cell.taskNameLabel.text = task.name
        cell.taskDescriptionLabel.text = task.notes
        cell.cellBackgroundView.layer.cornerRadius = 8
        cell.cellBackgroundView.layer.shadowOpacity = 1
        cell.cellBackgroundView.layer.shadowOffset = .zero
        cell.cellBackgroundView.layer.shadowRadius = 2
        cell.cellColorView.layer.cornerRadius = 8
        cell.cellColorView.layer.shadowOpacity = 1
        cell.cellColorView.layer.shadowOffset = .zero
        cell.cellColorView.layer.shadowRadius = 2
        
        cell.taskNameLabel.font = AppearanceHelper.alegreyaSansFont(with: .title2, pointSize: 25)
        cell.taskDescriptionLabel.font = AppearanceHelper.alegreyaSansFont(with: .caption1, pointSize: 17)
        
        switch task.priority {
            case "normal" :
                cell.cellColorView.backgroundColor = AppearanceHelper.mediumYellow
                
            case "high" :
                cell.cellColorView.backgroundColor = AppearanceHelper.highOrange
            case "critical" :
                cell.cellColorView.backgroundColor = AppearanceHelper.criticalRed
            default:
                cell.cellColorView.backgroundColor = AppearanceHelper.lowGreen
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
    
   
    
    func addNavBarImage() {
        let navController = navigationController!
        
        let image = UIImage(named: "tmlogo3")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - image!.size.width / 2
        let bannerY = bannerHeight / 2 - image!.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: 180, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
        // Add Shadow
        
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.darkGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOpacity = 0.8
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowRadius = 2
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
