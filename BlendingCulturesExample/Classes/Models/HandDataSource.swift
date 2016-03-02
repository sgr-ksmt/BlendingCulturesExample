//
//  HandDataSource.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/03.
//
//

import UIKit

class HandDataSource: DataSource {
    
    init() {
        super.init(dataObject: Hand())
    }
    
    override var conditionForAdding: Bool {
        return dataObject.numberOfItems < 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        guard let
            cell = tableView.dequeueReusableCellWithIdentifier("cardCell", forIndexPath: indexPath) as? CardCell,
            hand = dataObject as? Hand else {
                fatalError("Could not create CardCell")
        }
        cell.fillWith(hand[indexPath.row])
        return cell
    }

}
