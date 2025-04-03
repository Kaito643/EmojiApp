//
//  ContentView.swift
//  EmojiLover
//
//  Created by Umut Yıldız on 3.04.2025.
//

import SwiftUI

enum emoji: String, CaseIterable{
    case 👾, 🦔, 😎, 😭
}

struct ContentView: View {
    @State var selection: emoji = .🦔
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Emoji Selector", selection: $selection) {
                    ForEach(emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.inline)
            }
            .padding(100)
            .navigationTitle("Emoji Selector")
        }
    }
}

#Preview {
    ContentView()
}
