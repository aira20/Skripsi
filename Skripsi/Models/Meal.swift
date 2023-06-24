//
//  Meal.swift
//  Skripsi
//
//  Created by Mac-albert on 21/05/23.
//

import Foundation

class Meal: Decodable{
    var mealName: String
    var mealDescription: String
    var mealDay: Status
    var mainIngredients: [Ingredient]
    var complementaryIngredients: [Ingredient]
    var utensils: [Utensil]
    var steps: [String]
}

struct Ingredient: Decodable{
    var ingredientsName: String
    var ingredientsQuantity: String
}

class Utensil: Decodable {
    var untensilName: String
}

extension Meal{
    enum Status: String, Decodable{
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
    }
}
