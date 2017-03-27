//
//  Model.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

struct Hand: DataType {
    
    fileprivate var cards: [Card] = []
    
    var numberOfItems: Int {
        return cards.count
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    func addNewItemAtIndex(_ index: Int) -> Hand {
        return insertItem(Card.randomCard(), atIndex: index)
    }
    
    fileprivate func insertItem(_ card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, at: index)
        return Hand(cards: mutableCards)
    }
    
    func cardAtPosition(_ index: Int) -> Card {
        return cards[index]
    }
    
    func deleteItemAtIndex(_ index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.remove(at: index)
        return Hand(cards: mutableCards)
    }
    
    func moveItem(_ fromIndex: Int, toIndex: Int) -> Hand {
        return deleteItemAtIndex(fromIndex)
               .insertItem(cards[fromIndex], atIndex: toIndex)
    }
    
}
