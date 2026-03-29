//
//  ContentView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 24/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Congratulations on becoming a")
                .font(.title3)
                .fontWeight(.semibold)
            Text("🔹PLAYER🔹")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(Color.cyan)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
