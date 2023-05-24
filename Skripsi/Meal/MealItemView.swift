//
//  MealItemView.swift
//  Skripsi
//
//  Created by Mac-albert on 24/05/23.
//

import Foundation
import SwiftUI

struct MealItemView: View {
    let bestTimeConsume: Meal.Status
    let image: String
    let mealName: String
    let mealDescription: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(bestTimeConsume.rawValue)
                .font(.headline)
            Image(systemName: image)
                .resizable()
                .frame(width: 75, height: 75)
            Text(mealName)
                .font(.subheadline)
            Text(mealDescription)
                .font(.caption)
                .lineLimit(2)
        }
    }
}
