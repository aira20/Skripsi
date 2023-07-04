//
//  PersonalizedViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 04/07/23.
//

import Foundation

class PersonalizedViewModel: ObservableObject{
    @Published var recipes: [Meal] = Meal.recipes
    @Published var context: ContextMealViewModel
    
    init(context: ContextMealViewModel) {
        self.context = context
    }
    
    func randomMealFromRecipes() -> [Meal]{
        var randomRecipes: [Meal] = []
        
        var breakfastRecipes: [Meal] = []
        var lunchRecipes: [Meal] = []
        var dinnerRecipes: [Meal] = []
        
        // Memisahkan resep berdasarkan mealDay
        for recipe in Meal.recipes {
            switch recipe.mealDay {
            case .breakfast:
                breakfastRecipes.append(recipe)
            case .lunch:
                lunchRecipes.append(recipe)
            case .dinner:
                dinnerRecipes.append(recipe)
            }
        }
        
        if let randomBreakfast = breakfastRecipes.randomElement() {
            randomRecipes.append(randomBreakfast)
        }
        
        if let randomLunch = lunchRecipes.randomElement() {
            randomRecipes.append(randomLunch)
        }
        
        if let randomDinner = dinnerRecipes.randomElement() {
            randomRecipes.append(randomDinner)
        }
        
        return randomRecipes
    }
}
