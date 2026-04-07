//
//  ButtonStyle.swift
//  Solo
//
//  Created by Pazylov Toichubek on 4/4/26.
//

import SwiftUI


struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title3)
            .bold()
            .frame(maxWidth: 330)
            .padding(.vertical, 12)
            .foregroundStyle(Color.white)
            .background(Color(red: 14 / 255, green: 47 / 255, blue: 165 / 255))
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.85 : 1)
    }
}

struct LogInButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title3)
            .fontWeight(.medium)
            .frame(maxWidth: 330)
            .padding(.vertical, 10)
            .background(Color(white: 0.85))
            .foregroundStyle(Color.black)
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.85 : 1)
    }
}

struct SignUpButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title3)
            .fontWeight(.medium)
            .frame(maxWidth: 330)
            .padding(.vertical, 10)
            .background(Color(red: 0.267, green: 0.541, blue: 1.0))
            .foregroundStyle(Color.white)
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.85 : 1)
    }
}

struct GoogleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.semibold)
            .frame(maxWidth: 330)
            .padding(.vertical, 15)
            .foregroundStyle(Color.black)
            .background(Color.white)
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.85 : 1)
    }
}

struct AppleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.semibold)
            .frame(maxWidth: 330)
            .padding(.vertical, 15)
            .foregroundStyle(Color.white)
            .background(Color.black)
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.85 : 1)
    }
}
