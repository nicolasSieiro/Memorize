//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 28/09/2020.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
