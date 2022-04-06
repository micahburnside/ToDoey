//
//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Micah Burnside on 3/31/22.
//

import UIKit
import SwipeCellKit
import RealmSwift

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
        if let navbar = navigationController?.navigationBar {
            navbar.backgroundColor = .systemBlue
            navbar.barTintColor = .white
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60.0
        tableView.separatorStyle = .none
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        navigationController?.navigationBar.prefersLargeTitles = true
//        if let navbar = navigationController?.navigationBar {
//            navbar.backgroundColor = .systemBlue
//        }
//    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            print("Delete Cell")
            
            self.updateModel(at: indexPath)

        }

        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")

        return [deleteAction]
    }
//  MARK: - TableView DataSource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
                                
                cell.delegate = self
                
                return cell
    }
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
        //Update Date Model
        print("Item deleted from superclass")
    }
}

