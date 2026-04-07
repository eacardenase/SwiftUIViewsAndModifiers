//
//  ContentView.swift
//  SwiftUIViewsAndModifiers
//
//  Created by Edwin Cardenas on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        Button("Hello world") {
        //            print(type(of: self.body))
        //        }
        //        .font(.largeTitle)
        //        .foregroundStyle(.white)
        //        .frame(width: 200, height: 200)
        //        .background(.red)
        //        .clipShape(.rect(cornerRadius: 10))

        Button {
            print(type(of: self.body))
        } label: {
            Text("Hello world")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .frame(width: 200, height: 200)
                .background(.red)
                .clipShape(.rect(cornerRadius: 8))
        }
    }
}

#Preview {
    ContentView()
}
