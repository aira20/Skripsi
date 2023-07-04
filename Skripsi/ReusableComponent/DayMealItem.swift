//
//  DayMealItem.swift
//  Skripsi
//
//  Created by Mac-albert on 04/07/23.
//

import Foundation
import SwiftUI

struct DayMealItem: View{
    var randomRecipes: [Meal]
    
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color.clear)
            
            HStack{
                ForEach(randomRecipes, id: \.mealName) { recipe in
                    MealItemView(bestTimeConsume: recipe.mealDay, image: recipe.image, mealName: recipe.mealName, mealDescription: recipe.mealDescription)
                }
                
            }
            .padding(4)
            .frame(width: .infinity)
        }
    }
}
