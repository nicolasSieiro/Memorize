//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 15/08/2021.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]

    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [Card]()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
    }
}