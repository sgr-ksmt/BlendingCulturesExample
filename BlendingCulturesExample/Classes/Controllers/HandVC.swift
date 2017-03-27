//
//  HandVC.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

class HandVC: UITableViewController {
    
    fileprivate var dataSource = HandDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        tableView.delegate = self
        navigationItem.leftBarButtonItem = editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction fileprivate func addNewCard(_ sender: UIBarButtonItem) {
        dataSource.addItemTo(tableView)
    }
}
