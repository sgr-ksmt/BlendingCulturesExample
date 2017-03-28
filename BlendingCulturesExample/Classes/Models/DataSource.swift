//
//  DataSource.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/03.
//
//

import UIKit

class DataSource: NSObject, SourceType {
    var dataObject: DataType
    var conditionForAdding: Bool {
        return false
    }
    
    init<A: DataType>(dataObject: A) {
        self.dataObject = dataObject
    }

    func addItemTo(_ tableView: UITableView) {
        if conditionForAdding {
            dataObject = dataObject.addNewItemAtIndex(0)
            insertTopRowIn(tableView)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("This method must be overridden")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataObject = dataObject.deleteItemAtIndex(indexPath.row)
            deleteRowAtIndexPath(indexPath, from: tableView)
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {
        dataObject = dataObject.moveItem(fromIndexPath.row, toIndex: toIndexPath.row)
    }

}
