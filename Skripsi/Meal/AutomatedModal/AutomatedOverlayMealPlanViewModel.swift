//
//  AutomatedOverlayMealPlanViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 03/07/23.
//

import Foundation

class AutomatedOverlayMealPlanViewModel: ObservableObject{
    @Published var recipes: [Meal] = Meal.recipes
    @Published var randomRecipes: [Meal] = []
    @Published var context: AutomatedMealViewModel
    
    init(context: AutomatedMealViewModel) {
        self.context = context
        randomMealFromRecipes()
        
    }
    
    func randomMealFromRecipes() {
        self.randomRecipes = []
        
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
        
        print("random recipes: \(randomRecipes[0])")
    }

}
