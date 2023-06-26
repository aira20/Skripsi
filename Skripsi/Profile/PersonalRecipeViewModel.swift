//
//  PersonalRecipeViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 26/06/23.
//

import Foundation

class PersonalRecipeViewModel: ObservableObject{
    @Published var meals: [Meal] = [Meal.preview, Meal.preview1, Meal.preview2]
    
    init () {}
    
    
}
