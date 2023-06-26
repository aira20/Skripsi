//
//  RecipeDetailViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 26/06/23.
//

import Foundation

extension RecipeDetailView {
    class RecipeDetailViewModel: ObservableObject {
        var meal: Meal
        
        init (meal: Meal) {
            self.meal = meal
        }
        
    }
}
