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

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let
            cell = tableView.dequeueReusableCell(withIdentifier: "cardCell", for: indexPath) as? CardCell,
            let hand = dataObject as? Hand else {
                fatalError("Could not create CardCell")
        }
        cell.fillWith(hand[indexPath.row])
        return cell
    }

}
