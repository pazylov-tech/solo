//
//  LogInView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 4/4/26.
//

import SwiftUI

struct LogInView: View {
    var body : some View {
        NavigationStack {
            ZStack {
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
                    VStack (spacing: 10){
                        Text("Welcome Back")
                            .font(.largeTitle)
                            .foregroundStyle(Color.white)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                            .padding(.top, 40)
                        Text("Enter your credentials to continue")
                            .foregroundStyle(Color(white: 0.70))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                    }
                    
                    Spacer()
                    Button("LOGIN"){}
                        .buttonStyle(PrimaryButtonStyle())
                        .padding(.bottom, 20)
                    Text("or")
                        .foregroundStyle(Color(white: 0.70))
                        .padding(.bottom, 20)
    
                    VStack (spacing: 12){
                        Button("Continue with Google") {}
                            .buttonStyle(GoogleButtonStyle())
                        Button("Continue with Apple") {}
                            .buttonStyle(AppleButtonStyle())
                    }
                    HStack {
                        Text("Don't have an account?")
                            .fontWeight(.thin)
                            .foregroundStyle(Color(white: 0.80))
                        NavigationLink("Sign Up"){SignUpView()}
                            .fontWeight(.semibold)
                    }
                    .padding(.bottom, 10)
                }
            }
        }
    }
}

#Preview {
    LogInView()
}
