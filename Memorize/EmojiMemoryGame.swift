//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 15/08/2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject { //VIEW MODEL
    typealias Card = MemoryGame<String>.Card
    
    private static var emojis = ["😪", "💩", "🎃", "😈","1", "2", "3", "4","5", "6", "7", "8","9"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()

    var cards: Array<Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}

