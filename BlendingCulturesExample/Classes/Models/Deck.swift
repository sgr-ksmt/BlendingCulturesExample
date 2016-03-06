//
//  Deck.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/06.
//
//

import Foundation

class Deck {
    private var cards: [Card]
    
    init() {
        self.cards = Suit.allSuits.map({ suit in
            Rank.allRanks.map { Card($0, suit) }
        }).flatMap { $0 }
    }
    
    var isEmpty: Bool {
        return cards.isEmpty
    }
    
    func nextCard() -> Card {
        cards = cards.sort { _ in arc4random() < arc4random() }
        return cards.removeLast()
    }
}