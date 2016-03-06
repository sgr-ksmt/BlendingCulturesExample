//
//  Model.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

struct Hand: DataType {
    
    private var deck = Deck()
    private var cards = [Card]()
    
    var numberOfItems: Int {
        return cards.count
    }
    
    var isEmptyDeck: Bool {
        return deck.isEmpty
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    init() {}
    
    private init(deck: Deck, cards: [Card]) {
        self.deck = deck
        self.cards = cards
    }
    
    @warn_unused_result
    func addNewItemAtIndex(index: Int) -> Hand {
        return insertItem(deck.nextCard(), atIndex: index)
    }
    
    @warn_unused_result
    private func insertItem(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, atIndex: index)
        return Hand(deck: deck, cards: mutableCards)
    }
    
    func cardAtPosition(index: Int) -> Card {
        return cards[index]
    }
    
    @warn_unused_result
    func deleteItemAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.removeAtIndex(index)
        return Hand(deck: deck,cards: mutableCards)
    }
    
    @warn_unused_result
    func moveItem(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteItemAtIndex(fromIndex)
               .insertItem(cards[fromIndex], atIndex: toIndex)
    }
    
}
