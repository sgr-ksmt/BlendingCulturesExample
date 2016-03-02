//
//  CardCell.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet private weak var suitLabel: UILabel!
    @IBOutlet private weak var rankLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func fillWith(card: Card) {
        rankLabel.textColor = card.color
        rankLabel.text = card.rank.description
        suitLabel.textColor = card.color
    }
}
