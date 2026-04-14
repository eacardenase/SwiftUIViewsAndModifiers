//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct CustomTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 8))
    }
}

struct CapsuleText: View {
    let text: String

    var body: some View {
        Text(text)
            .modifier(CustomTitle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")

            CapsuleText(text: "Second")
        }
    }
}

#Preview {
    ContentView()
}
