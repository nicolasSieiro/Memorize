//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 15/08/2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject { //VIEW MODEL
    static var emojis = ["😪", "💩", "🎃", "😈","1", "2", "3", "4","5", "6", "7", "8","9"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

