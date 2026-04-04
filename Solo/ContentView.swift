//
//  ContentView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 24/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("PrimaryBG")
                    .ignoresSafeArea()
                VStack {
                    Image("solo-icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 160)
                        .cornerRadius(20)
                        .padding(.top, 50)
                    Text("SOLO")
                        .font(.system(size: 34, weight: .semibold, design: .serif))
                        .foregroundStyle(Color("TextColor"))
                    Text("LEVELING SYSTEM")
                        .font(.headline)
                        .foregroundStyle(Color("TextColor"))
                    
                    Spacer()
                    NavigationLink("START") {
                        AuthView()
                    }
                        .font(.title2)
                        .bold()
                        .padding(.horizontal, 30)
                        .padding(.vertical, 20)
                        .foregroundStyle(Color.black)
                        .background(Color.white)
                        .clipShape(.capsule)
                    
                    Spacer()
                    Text("ARISE")
                        .font(.system(size: 37, weight: .bold, design: .serif))
                        .foregroundStyle(Color.cyan)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}

//#Preview ("iPhone Air") {
//    ContentView()
//}
