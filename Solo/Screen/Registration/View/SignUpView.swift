//
//  SignUpView.swift
//  Solo
//
//  Created by Pazylov Toichubek on 4/4/26.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                Color("PrimaryBG")
                    .ignoresSafeArea()
                VStack (alignment: .leading) {
                    
                    header
                    
                    Spacer()
                    VStack {
                        NavigationLink("Continue"){CreateAccount()}
                            .buttonStyle(PrimaryButtonStyle())
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 10)
                        HStack {
                            Text("Already have an account?")
                                .fontWeight(.thin)
                                .foregroundStyle(Color(white: 0.80))
                            NavigationLink("Sign In") {LogInView()}
                                .fontWeight(.semibold)
                        }
                        .padding(.bottom, 20)
                    }
                }
            }
        }
    }
}

#Preview {
    SignUpView()
}

extension SignUpView {
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
            
            VStack (alignment: .leading, spacing: 7){
                Text("Create Account")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 40)
                Text("Step 1 of 2: Personal Information")
                    .foregroundStyle(Color(white: 0.70))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.bottom, 20)
                
                VStack {
                    VStack(spacing: 20) {
                        AppField(placeholder: "First Name", text: $viewModel.fname)
                        AppField(placeholder: "Last Name", text: $viewModel.lname)
                        AppField(placeholder: "Email", text: $viewModel.mail)
                        AppField(placeholder: "Password", text: $viewModel.password, isPassword: true)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal, 30)
                }
            }
    
        }
    }
}
