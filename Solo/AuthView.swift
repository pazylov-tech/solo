//
//  AuthView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 3/4/26.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        ZStack{
            Color(red: 18 / 255, green: 30 / 255, blue: 93 / 255)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("solo-icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(.capsule)
                        .padding(.top, 25)
                    Text("SOLO")
                        .font(Font.custom("Avenir-Black", size: 40))
                        .foregroundStyle(Color.cyan)
                        .padding(.top, 25)
                }
                
                Spacer()
                    Text("Welcome to \nSOLO System")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .multilineTextAlignment(.center)
                
                Spacer()
                VStack (spacing: 10) {
                    Button("Log In") {}
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.horizontal, 135)
                        .padding(.vertical, 10)
                        .background(Color(white: 0.85))
                        .foregroundStyle(Color.black)
                        .cornerRadius(15)
                        .padding()
                    Button("Sign Up") {}
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.horizontal, 126)
                        .padding(.vertical, 10)
                        .background(Color(red: 0.267, green: 0.541, blue: 1.0))
                        .foregroundStyle(Color.white)
                        .cornerRadius(15)
                }
                        .padding(.bottom, 100)
            }
        }
    }
}

#Preview {
    AuthView()
}
