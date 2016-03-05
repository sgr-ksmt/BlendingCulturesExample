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
    
    override var conditionForDeleting: Bool {
        return dataObject.numberOfItems > 1
    }
    
    private var hand: Hand {
        return dataObject as! Hand
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cardCell", forIndexPath: indexPath) as! CardCell
        cell.fillWith(hand[indexPath.row])
        return cell
    }
    
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return conditionForDeleting
    }
}
