//
//  ButtonView.swift
//  Skripsi
//
//  Created by Mac-albert on 24/05/23.
//

import SwiftUI

struct ButtonView: View {
    let icon: String?
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack{
//                if let icon = icon{
//                    Image(systemName: icon)
//                }
                Text(title)
                    .frame(maxWidth: .infinity)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hex: "#519259"))
                    .cornerRadius(10)
            }
        }
    }
}
