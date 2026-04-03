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
                Color(red: 18 / 255, green: 30 / 255, blue: 93 / 255)
                    .ignoresSafeArea()
                VStack {
                    Image("solo-icon")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 160, height: 160)
                        .padding(.top, 70)
                    Text("SOLO")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(red: 163 / 255, green: 232 / 255, blue: 237 / 255))
                    Text("LEVELING SYSTEM")
                        .font(.headline)
                        .foregroundStyle(Color(red: 163 / 255, green: 232 / 255, blue: 237 / 255))
                    
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
                        .font(.largeTitle)
                        .fontWeight(.bold)
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
