//
//  Card.swift
//  BlendingCulturesExample
//
//  Created by Suguru Kishimoto on 2016/03/02.
//
//

import UIKit

private func randomValue(bound: Int) -> Int {
    return Int(arc4random_uniform(UInt32(bound)))
}

enum Rank: Int, CustomStringConvertible {
    case Ace, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King
    
    static let numberOfRank = 13
    
    static func randomRank() -> Rank {
        return Rank(rawValue: randomValue(numberOfRank))!
    }
    
    static var allRanks: [Rank] {
        return (0..<numberOfRank).map { Rank(rawValue: $0)! }
    }
    
    var description: String {
        switch self {
        case .Ace: return "A"
        case .Jack: return "J"
        case .Queen: return "Q"
        case .King: return "K"
        default: return String(self.rawValue)
        }
    }
}

enum Suit: Int, CustomStringConvertible {
    case Heart, Diamonds, Clubs, Spade
    
    static let numberOfSuit = 4
    
    static func randomSuit() -> Suit {
        return Suit(rawValue: randomValue(numberOfSuit))!
    }
    
    static var allSuits: [Suit] {
        return (0..<numberOfSuit).map { Suit(rawValue: $0)! }
    }
    
    var description: String {
        switch self {
        case Heart: return "♥"
        case Diamonds: return "♦"
        case Clubs: return "♣"
        case Spade: return "♠"
        }
    }
}

struct Card {
    private(set) var rank: Rank
    private(set) var suit: Suit
    
    static func randomCard() -> Card {
        return Card(.randomRank(),.randomSuit())
    }
    
    init(_ rank: Rank, _ suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
    var color: UIColor {
        switch suit {
        case .Spade, .Clubs:
            return .blackColor()
        case .Heart, .Diamonds:
            return .redColor()
        }
    }
}
