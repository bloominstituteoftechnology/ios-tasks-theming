//
//  TaskDetailViewController.swift
//  Tasks
//
//  Created by Jake Connerly on 8/12/19.
//  Copyright © 2019 Andrew R Madsen. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var priorityLabel: UILabel!
    
    var task: Task?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    
    private func updateViews() {
        guard let task = task else { return }
        taskLabel?.text = task.name
        notesTextView?.text = task.notes
        
        switch task.priority {
        case TaskPriority.low.rawValue:
            priorityLabel.textColor = .green
            priorityLabel.text = "low"
        case TaskPriority.normal.rawValue:
            priorityLabel.textColor = AppearanceHelper.blueTextColor
            priorityLabel.text = "Normal"
        case TaskPriority.high.rawValue:
            priorityLabel.textColor = .orange
            priorityLabel.text = "High"
        case TaskPriority.critical.rawValue:
            priorityLabel.textColor = .red
            priorityLabel.text = "Critical"
        default:
            priorityLabel.textColor = AppearanceHelper.blueTextColor
        }
    
        
    }
    
    var initialTouchPoint: CGPoint = CGPoint(x: 0,y: 0)
    
    @IBAction func panGestureRecognizerHandler(_ sender: UIPanGestureRecognizer) {
        let touchPoint = sender.location(in: self.view?.window)
        
        if sender.state == UIGestureRecognizer.State.began {
            initialTouchPoint = touchPoint
        } else if sender.state == UIGestureRecognizer.State.changed {
            if touchPoint.y - initialTouchPoint.y > 0 {
                self.view.frame = CGRect(x: 0, y: touchPoint.y - initialTouchPoint.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
            }
        } else if sender.state == UIGestureRecognizer.State.ended || sender.state == UIGestureRecognizer.State.cancelled {
            if touchPoint.y - initialTouchPoint.y > 100 {
                self.dismiss(animated: true, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, animations: {
                    self.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
                })
            }
        }
    }
 
}
