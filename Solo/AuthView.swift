//
//  AuthView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 3/4/26.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color("PrimaryBG")
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Image("solo-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .clipShape(.capsule)
                        Text("SOLO")
                            .font(.system(size: 37, weight: .semibold, design: .serif))
                            .foregroundStyle(Color.cyan)
                    }
                    
                    Spacer()
                        Text("Welcome to \nSOLO System")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .multilineTextAlignment(.center)
                    
                    Spacer()
                    VStack (spacing: 17) {
                        NavigationLink("Log In") {
                            LogInView()
                        }
                            .buttonStyle(LogInButtonStyle())
                        NavigationLink("Sign Up") {
                            SignUpView()
                        }
                            .buttonStyle(SignUpButtonStyle())
                    }
                            .padding(.bottom, 70)
                }
            }
        }
    }
}

#Preview {
    AuthView()
}
