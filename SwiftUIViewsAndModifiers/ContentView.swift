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
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
                .foregroundStyle(.pink)
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
        .foregroundStyle(.purple)
    }
}

#Preview {
    ContentView()
}
