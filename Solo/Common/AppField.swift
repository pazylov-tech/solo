//
//  AppField.swift
//  Solo
//
//  Created by Pazylov Toichubek on 5/4/26.
//

import SwiftUI

struct AppField: View {
    var placeholder: String
    @Binding var text: String
    var isPassword: Bool = false
    var body: some View {
        if isPassword {
            SecureField(placeholder, text: $text)
                .frame(height: 48)
                .padding(.horizontal, 16)
                .background(.gray.opacity(0.70))
        } else {
            TextField(placeholder, text: $text)
                .frame(height: 48)
                .padding(.horizontal, 16)
                .background(.gray.opacity(0.70))
        }
    }
    
}
