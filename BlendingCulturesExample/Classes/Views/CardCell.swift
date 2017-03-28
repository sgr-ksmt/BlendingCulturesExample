//
//  CardCell.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet fileprivate weak var suitLabel: UILabel!
    @IBOutlet fileprivate weak var rankLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func fillWith(_ card: Card) {
        rankLabel.textColor = card.color
        rankLabel.text = card.rank.description
        suitLabel.text = card.suit.description
    }
}
