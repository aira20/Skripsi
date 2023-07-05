//
//  MealPlanItem.swift
//  Skripsi
//
//  Created by Aria on 24/05/23.
//

import Foundation
import SwiftUI

struct MealPlanItem<Label: View>: View {
    var action: (() -> Void)?
    var destination: AnyView?
    var label: Context
    
    var body: some View {
        Group {
            if let action = action {
                Button(action: action) {
                    bodyView(context: label)
                }
            } else if let destination = destination {
                NavigationLink(destination: EmptyView()) {
                    bodyView(context: label)
                }
            }
        }
    }
    
    func bodyView(context: Context) -> some View {
        ZStack{
            Rectangle()
                .foregroundColor(context.backgroundColor)
                .cornerRadius(16)
            VStack(alignment: .center, spacing: 8){
                Image(systemName: context.image)
                    .resizable()
                    .frame(width: context.geo.size.width * 0.15, height: context.geo.size.width * 0.15)
                    .foregroundColor(Color.white)
                Text(context.titleItem).font(.headline)
                Text(context.description).font(.caption).multilineTextAlignment(.center)
            }
        }.frame(width: context.geo.size.width * 0.47, height: context.geo.size.width * 0.45)
        
    }
}

struct Context{
    var backgroundColor: Color
    var image: String
    var description: String
    var titleItem: String
    var geo: GeometryProxy
}
