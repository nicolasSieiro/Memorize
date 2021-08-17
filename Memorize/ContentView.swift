//
//  ContentView.swift
//  Memorize
//
//  Created by Nicolas Sieiro on 28/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State var emojiCount = 2
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.orange)
            Spacer()
            HStack {
                removeBtn
                Spacer()
                addBtn
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding()
        .font(.largeTitle)
    }
    
    var removeBtn: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
    }
    var addBtn: some View {
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).strokeBorder(lineWidth: 3.0)
                Text(content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
