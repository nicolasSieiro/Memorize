//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 28/09/2020.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
