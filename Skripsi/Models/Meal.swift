//
//  Meal.swift
//  Skripsi
//
//  Created by Mac-albert on 21/05/23.
//

import Foundation


struct Meal: Codable{
    
//    @DocumentID var id: String!
    var mealName: String
    var image: String
    var mealDescription: String
    var mealDay: Status
    var mainIngredients: [Ingredient]
    var complementaryIngredients: [Ingredient]
    var utensils: [Utensil]
    var steps: [String]
}

struct Ingredient: Codable{
    var ingredientsName: String
    var ingredientsQuantity: String
}

struct Utensil: Codable {
    var untensilName: String
}

extension Meal{
    enum Status: String, Codable{
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
    }
}
