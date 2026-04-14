//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct CapsuleText: View {
    let text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white)

            CapsuleText(text: "Second")
                .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    ContentView()
}
