//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    let motto1 = Text("Draco dormiens")
    var motto2: some View {
        Text("nunquam titillandus")
    }

    @ViewBuilder
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }

    var body: some View {
        VStack {
            motto1
                .italic()

            motto2

            spells
        }
        .font(.title)
        .foregroundStyle(.purple)
    }
}

#Preview {
    ContentView()
}
