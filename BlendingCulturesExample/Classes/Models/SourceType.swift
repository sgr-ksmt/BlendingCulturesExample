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
    func insertTopRowIn(_ tableView: UITableView)
    func deleteRowAtIndexPath(_ indexPath: IndexPath, from tableView: UITableView)
}

extension SourceType {
    func insertTopRowIn(_ tableView: UITableView) {
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
    }
    
    func deleteRowAtIndexPath(_ indexPath: IndexPath, from tableView: UITableView) {
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
