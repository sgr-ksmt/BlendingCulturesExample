//
//  HandVC.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

class HandVC: UITableViewController {
    
    private lazy var dataSource = HandDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        tableView.delegate = self
        navigationItem.leftBarButtonItem = editButtonItem()
        dataSource.addItemTo(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction private func addNewCard(sender: UIBarButtonItem) {
        dataSource.addItemTo(tableView)
    }
}

typealias HandVCTableViewDelegate = HandVC
extension HandVCTableViewDelegate {
    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return dataSource.conditionForDeleting ? .Delete : .None
    }
    
    override func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }
}