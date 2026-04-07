//
//  LogInView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 4/4/26.
//

import SwiftUI

struct LogInView: View {
    @StateObject var ViewModel = LogInViewModel()
    var body : some View {
        NavigationStack {
            ZStack {
                Color("PrimaryBG")
                    .ignoresSafeArea()
                VStack {
                    header
                    
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

extension LogInView {
    var header: some View {
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
                    .padding(.leading, 30)
                    .padding(.top, 40)
                Text("Enter your credentials to continue")
                    .foregroundStyle(Color(white: 0.70))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.bottom, 30)
                
                VStack {
                    VStack (alignment: .leading, spacing: 15) {
                        Text("EMAIL")
                            .foregroundStyle(.white)
                        AppField(placeholder: "", text: $ViewModel.mail)
                            .cornerRadius(12)
                        Text("PASSWORD")
                            .foregroundStyle(.white)
                        AppField(placeholder: "", text: $ViewModel.password)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 30)
                }
                
                Button("Forgot Password?") {}
                    .foregroundStyle(Color(white: 0.70))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 30)
        
            }
        }
    }
}
