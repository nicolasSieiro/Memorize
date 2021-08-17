//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 15/08/2021.
//

import SwiftUI

class EmojiMemoryGame {
    static var emojis = ["😪", "💩", "🎃", "😈","1", "2", "3", "4","5", "6", "7", "8","9"]
    
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}

