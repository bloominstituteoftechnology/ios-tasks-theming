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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAppearance()
    }
    
    @IBAction func refresh(_ sender: Any) {
        taskController.fetchTasksFromServer { _ in
            DispatchQueue.main.async {
                self.refreshControl?.endRefreshing()
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return fetchedResultsController.sections?.count ?? 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedResultsController.sections?[section].numberOfObjects ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        
        let task = fetchedResultsController.object(at: indexPath)
        cell.textLabel?.text = task.name
        
        guard let priority = task.priority else { return cell }
        
        cellStyle(for: cell, priority: priority)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let sectionInfo = fetchedResultsController.sections?[section] else { return nil }
        
        let view = UIView()
        
        let label = UILabel()
        label.font = AppearanceHelper.styleFont(with: .caption1, pointSize: 20)
        label.text = sectionInfo.name.capitalized
        label.frame = CGRect(x: 15, y: 5, width: tableView.bounds.maxX, height: 25)
        view.addSubview(label)
        
        switch sectionInfo.name {
        case "critical":
            label.textColor = AppearanceHelper.citron
            view.backgroundColor = AppearanceHelper.beige
        case "high":
            label.textColor = AppearanceHelper.citron
            view.backgroundColor = AppearanceHelper.tuscan
        default:
            label.textColor = AppearanceHelper.straw
            view.backgroundColor = AppearanceHelper.citron
        }
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = fetchedResultsController.object(at: indexPath)
            
            
            taskController.deleteTaskFromServer(task) { (error) in
                if let error = error {
                    NSLog("Error deleting task from server: \(error)")
                    return
                }
                
                DispatchQueue.main.async {
                    let moc = CoreDataStack.shared.mainContext
                    moc.delete(task)
                    do {
                        try moc.save()
                    } catch {
                        moc.reset()
                        NSLog("Error saving managed object context: \(error)")
                    }
                }
            }
        }
    }
    
    // MARK: Styling
    
    private func setAppearance() {
        view.backgroundColor = AppearanceHelper.citron
        tableView.backgroundColor = AppearanceHelper.citron
        tableView.separatorColor = .clear
    }
    
    private func cellStyle(for cell: UITableViewCell, priority: String) {
        switch priority {
        case "low":
            cell.textLabel?.textColor = AppearanceHelper.straw
            cell.backgroundColor = AppearanceHelper.citron
            cell.textLabel?.font = AppearanceHelper.styleFont(with: .body, pointSize: 28)
        case "normal":
            cell.textLabel?.textColor = AppearanceHelper.tuscan
            cell.backgroundColor = AppearanceHelper.citron
            cell.textLabel?.font = AppearanceHelper.styleFont(with: .title3, pointSize: 31)
        case "high":
            cell.textLabel?.textColor = .darkGray
            cell.backgroundColor = AppearanceHelper.tuscan
            cell.textLabel?.font = AppearanceHelper.styleFont(with: .title2, pointSize: 34)
        case "critical":
            cell.backgroundColor = AppearanceHelper.beige
            cell.textLabel?.textColor = .darkGray
            cell.textLabel?.font = AppearanceHelper.styleFont(with: .title1, pointSize: 38)
        default:
            cell.backgroundColor = AppearanceHelper.citron
            cell.textLabel?.textColor = AppearanceHelper.straw
            cell.textLabel?.font = AppearanceHelper.styleFont(with: .body, pointSize: 28)
        }
    }
    
    // MARK: - NSFetchedResultsControllerDelegate
    
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
                    didChange sectionInfo: NSFetchedResultsSectionInfo,
                    atSectionIndex sectionIndex: Int,
                    for type: NSFetchedResultsChangeType) {
        switch type {
        case .insert:
            tableView.insertSections(IndexSet(integer: sectionIndex), with: .automatic)
        case .delete:
            tableView.deleteSections(IndexSet(integer: sectionIndex), with: .automatic)
        default:
            break
        }
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
                    didChange anObject: Any,
                    at indexPath: IndexPath?,
                    for type: NSFetchedResultsChangeType,
                    newIndexPath: IndexPath?) {
        switch type {
        case .insert:
            guard let newIndexPath = newIndexPath else { return }
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        case .update:
            guard let indexPath = indexPath else { return }
            tableView.reloadRows(at: [indexPath], with: .automatic)
        case .move:
            guard let oldIndexPath = indexPath,
                let newIndexPath = newIndexPath else { return }
            tableView.deleteRows(at: [oldIndexPath], with: .automatic)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        case .delete:
            guard let indexPath = indexPath else { return }
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowTaskDetail" {
            let detailVC = segue.destination as! TaskDetailViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                detailVC.task = fetchedResultsController.object(at: indexPath)
            }
            detailVC.taskController = taskController
        }
        
        if segue.identifier == "ShowCreateTask" {
            let detailVC = segue.destination as! TaskDetailViewController
            detailVC.taskController = taskController
        }
    }
    
    // MARK: Properties
    
    private let taskController = TaskController()
    
    lazy var fetchedResultsController: NSFetchedResultsController<Task> = {
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "priority", ascending: true),
                                        NSSortDescriptor(key: "name", ascending: true)]
        let moc = CoreDataStack.shared.mainContext
        let frc = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: moc, sectionNameKeyPath: "priority", cacheName: nil)
        frc.delegate = self
        try! frc.performFetch()
        return frc
    }()
}
