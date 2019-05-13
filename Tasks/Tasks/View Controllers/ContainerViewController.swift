//
//  ContainerViewController.swift
//  Tasks
//
//  Created by Michael Redig on 5/13/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

	// MARK: Properties

	private let taskController = TaskController()

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "ShowCreateTask" {
			let detailVC = segue.destination as! TaskDetailViewController
			detailVC.taskController = taskController
		}

		if segue.identifier == "ShowTableView" {
			let tableVC = segue.destination as! TasksTableViewController
			tableVC.taskController = taskController
		}
	}

}
