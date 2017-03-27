//
//  Card.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

private func randomValue(_ bound: Int) -> Int {
    return Int(arc4random_uniform(UInt32(bound)))
}

enum Rank: Int, CustomStringConvertible {
    case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    
    static let numberOfRank = 13
    
    static func randomSuit() -> Rank {
        return Rank(rawValue: randomValue(numberOfRank))!
    }
    
    var description: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default: return String(self.rawValue)
        }
    }
}

enum Suit: Int, CustomStringConvertible {
    case heart, diamonds, clubs, spade
    
    static let numberOfSuit = 4
    
    static func randomSuit() -> Suit {
        return Suit(rawValue: randomValue(numberOfSuit))!
    }
    
    var description: String {
        switch self {
        case .heart: return "♥"
        case .diamonds: return "♦"
        case .clubs: return "♣"
        case .spade: return "♠"
        }
    }
}

struct Card {
    fileprivate(set) var rank: Rank
    fileprivate(set) var suit: Suit
    
    static func randomCard() -> Card {
        return Card(Rank.randomSuit(),Suit.randomSuit())
    }
    
    init(_ rank: Rank, _ suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    var color: UIColor {
        switch suit {
        case .spade, .clubs:
            return .black
        case .heart, .diamonds:
            return .red
        }
    }
}
