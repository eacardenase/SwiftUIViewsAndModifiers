//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(.red)
            .clipShape(.buttonBorder)
            .padding()
            .background(.green)
            .clipShape(.buttonBorder)
            .padding()
            .background(.blue)
            .clipShape(.buttonBorder)
            .padding()
            .background(.yellow)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    ContentView()
}
