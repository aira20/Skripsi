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
    var isMealStatusPresent: Bool = true
    
    var body: some View {
        VStack(alignment: .center) {
            if isMealStatusPresent {
                Text(bestTimeConsume.rawValue)
                    .font(.headline)
            }
            Image(image)
                .resizable()
                .frame(width: 75, height: 75)
            Text(mealName)
                .font(.subheadline)
                .lineLimit(1)
            Text(mealDescription)
                .font(.caption)
                .lineLimit(2)
        }
    }
}
