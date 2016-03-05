//
//  SourceType.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/03.
//
//

import UIKit

protocol SourceType: UITableViewDataSource {
    var dataObject: DataType { get set }
    var conditionForAdding: Bool { get }
    var conditionForDeleting: Bool { get }
    var insertRowAnimationType: UITableViewRowAnimation { get }
    var deleteRowAnimationType: UITableViewRowAnimation { get }
    func insertTopRowIn(tableView: UITableView)
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
}

extension SourceType {
    func insertTopRowIn(tableView: UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: insertRowAnimationType)
    }
    
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView) {
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: deleteRowAnimationType)
    }
}
