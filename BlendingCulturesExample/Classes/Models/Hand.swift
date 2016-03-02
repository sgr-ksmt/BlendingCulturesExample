//
//  Model.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

struct Hand: DataType {
    
    private var cards: [Card] = []
    
    var numberOfItems: Int {
        return cards.count
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    func addNewItemAtIndex(index: Int) -> Hand {
        return insertItem(Card.randomCard(), atIndex: index)
    }
    
    private func insertItem(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, atIndex: index)
        return Hand(cards: mutableCards)
    }
    
    func cardAtPosition(index: Int) -> Card {
        return cards[index]
    }
    
    func deleteItemAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.removeAtIndex(index)
        return Hand(cards: mutableCards)
    }
    
    func moveItem(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteItemAtIndex(fromIndex)
               .insertItem(cards[fromIndex], atIndex: toIndex)
    }
    
}
