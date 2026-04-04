//
//  SignUpView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 4/4/26.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
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
                        Text("Create Account")
                            .font(.largeTitle)
                            .foregroundStyle(Color.white)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                            .padding(.top, 40)
                        Text("Step 1 of 2: Personal Information")
                            .foregroundStyle(Color(white: 0.70))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                    }
                    
                    Spacer()
                    NavigationLink("Continue"){CreateAccount()}
                        .buttonStyle(PrimaryButtonStyle())
                        .padding(.bottom, 5)
                    HStack {
                        Text("Already have an account?")
                            .fontWeight(.thin)
                            .foregroundStyle(Color(white: 0.80))
                        NavigationLink("Sign In") {LogInView()}
                            .fontWeight(.semibold)
                    }
                    .padding(.bottom, 10)
                }
            }
        }
    }
}

#Preview {
    SignUpView()
}
