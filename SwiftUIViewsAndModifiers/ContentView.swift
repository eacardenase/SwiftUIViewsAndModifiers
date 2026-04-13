//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = true

    var body: some View {
        Button("Toggle color") {
            useRedText.toggle()
        }
        .buttonStyle(.bordered)
        .font(.largeTitle)
        .tint(useRedText ? .red : .blue)

    }
}

#Preview {
    ContentView()
}
