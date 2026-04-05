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
    var body: some View {
        TextField(placeholder, text: $text)
            .frame(height: 48)
            .padding(.horizontal, 16)
            .background(.gray.opacity(0.5))
            .padding(.horizontal, 26)
    }
}
