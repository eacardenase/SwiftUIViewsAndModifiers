//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(.blue.gradient)
                .ignoresSafeArea()

            VStack {
                ForEach(0..<rows, id: \.self) { row in
                    HStack {
                        ForEach(0..<columns, id: \.self) { column in
                            content(row, column)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            VStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
            .frame(width: 60, height: 60)
            .background(.purple.gradient)
            .font(.title3)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
