//
//  CreateAccount.swift
//  Solo
//
//  Created by Pazylov Toichubek on 4/4/26.
//

import SwiftUI

struct CreateAccount: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("PrimaryBG")
                    .ignoresSafeArea()
                VStack {
                    header
                    
                    Spacer()
                    Button("Create Account"){}
                        .buttonStyle(PrimaryButtonStyle())
                        .padding(.bottom, 10)
                    Text("By creating an account, you agree to SOLO's Terms of Service and Privacy Policy")
                        .font(.caption)
                        .padding(.horizontal, 30)
                        .foregroundStyle(Color(white: 0.70))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 30)
                }
            }
        }
    }
}

#Preview {
    CreateAccount()
}

extension CreateAccount {
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
                Text("Almost Done")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
                    .padding(.top, 40)
                Text("Step 2 of 2: Personal Information")
                    .foregroundStyle(Color(white: 0.70))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 30)
            }
        }
    }
}
