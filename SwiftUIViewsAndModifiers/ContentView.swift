//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

// MARK: - CustomTitle

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

extension View {
    func customTitleStyle() -> some View {
        modifier(CustomTitle())
    }
}

// MARK: - Watermark

struct Watermark: ViewModifier {
    let text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content

            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black.mix(with: .white, by: 0.5))
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

// MARK: - CapsuleText

struct CapsuleText: View {
    let text: String

    var body: some View {
        Text(text)
            .customTitleStyle()
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")

            CapsuleText(text: "Second")
        }
        .frame(width: 300, height: 300)
        .border(.black)
        .watermarked(with: "Crafting Hands")
    }
}

#Preview {
    ContentView()
}
