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

extension Meal {
    static let preview: Meal = Meal(
        mealName: "Chicken Parmesan",
        mealDescription: "Delicious chicken parmesan with pasta",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Chicken breast", ingredientsQuantity: "2"),
            Ingredient(ingredientsName: "Breadcrumbs", ingredientsQuantity: "1 cup"),
            Ingredient(ingredientsName: "Parmesan cheese", ingredientsQuantity: "1/2 cup"),
            Ingredient(ingredientsName: "Marinara sauce", ingredientsQuantity: "1 cup")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Spaghetti", ingredientsQuantity: "1/2 pound"),
            Ingredient(ingredientsName: "Garlic", ingredientsQuantity: "2 cloves"),
            Ingredient(ingredientsName: "Olive oil", ingredientsQuantity: "2 tablespoons"),
            Ingredient(ingredientsName: "Basil leaves", ingredientsQuantity: "1/4 cup")
        ],
        utensils: [
            Utensil(untensilName: "Baking dish"),
            Utensil(untensilName: "Skillet"),
            Utensil(untensilName: "Pot"),
            Utensil(untensilName: "Spatula")
        ],
        steps: [
            "Preheat the oven to 400°F",
            "Mix breadcrumbs and parmesan cheese in a shallow dish",
            "Dip chicken breasts in the breadcrumb mixture to coat",
            "Heat olive oil in a skillet over medium heat",
            "Cook the chicken in the skillet until golden brown on both sides",
            "Transfer the chicken to a baking dish and top with marinara sauce",
            "Bake in the preheated oven for 20 minutes",
            "Meanwhile, cook spaghetti according to package instructions",
            "Serve the chicken parmesan over spaghetti, garnished with basil leaves"
        ]
    )
}

extension Meal {
    static let preview1: Meal = Meal(
        mealName: "Nasi Goreng",
        mealDescription: "Nasi goreng adalah sejenis makanan yang terbuat dari bahan-bahan nasi dan bumbu-bumbu yang diolah dengan cara digoreng",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Nasi", ingredientsQuantity: "2 porsi"),
            Ingredient(ingredientsName: "Bawang merah", ingredientsQuantity: "3 butir"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "2 siung"),
            Ingredient(ingredientsName: "Kecap manis", ingredientsQuantity: "2 sendok makan")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Telur", ingredientsQuantity: "2 butir"),
            Ingredient(ingredientsName: "Daging ayam", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Udang", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Sayuran", ingredientsQuantity: "secukupnya")
        ],
        utensils: [
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Sendok"),
            Utensil(untensilName: "Garpu")
        ],
        steps: [
            "Panaskan minyak di dalam wajan",
            "Tumis bawang merah dan bawang putih hingga harum",
            "Masukkan nasi dan aduk rata",
            "Tambahkan kecap manis dan aduk kembali",
            "Masukkan telur, daging ayam, udang, dan sayuran",
            "Aduk rata hingga matang dan siap disajikan"
        ]
    )
}

extension Meal {
    static let preview2: Meal = Meal(
        mealName: "Spaghetti Carbonara",
        mealDescription: "Spaghetti carbonara adalah hidangan pasta yang terbuat dari spaghetti, telur, keju parmesan, bacon, dan lada hitam",
        mealDay: .dinner,
        mainIngredients: [
            Ingredient(ingredientsName: "Spaghetti", ingredientsQuantity: "200 gram"),
            Ingredient(ingredientsName: "Telur", ingredientsQuantity: "2 butir"),
            Ingredient(ingredientsName: "Keju parmesan", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Bacon", ingredientsQuantity: "100 gram"),
            Ingredient(ingredientsName: "Lada hitam", ingredientsQuantity: "secukupnya")
        ],
        complementaryIngredients: [
            Ingredient(ingredientsName: "Minyak zaitun", ingredientsQuantity: "2 sendok makan"),
            Ingredient(ingredientsName: "Bawang putih", ingredientsQuantity: "2 siung"),
            Ingredient(ingredientsName: "Peterseli", ingredientsQuantity: "secukupnya")
        ],
        utensils: [
            Utensil(untensilName: "Panci"),
            Utensil(untensilName: "Wajan"),
            Utensil(untensilName: "Sendok"),
            Utensil(untensilName: "Garpu")
        ],
        steps: [
            "Rebus air dalam panci hingga mendidih, lalu masukkan spaghetti dan rebus hingga al dente",
            "Panaskan minyak zaitun dalam wajan, tumis bawang putih hingga harum",
            "Tambahkan bacon dan masak hingga crispy",
            "Dalam wadah terpisah, kocok telur dan keju parmesan hingga tercampur rata",
            "Tiriskan spaghetti dan masukkan ke dalam wajan, aduk rata dengan bawang putih dan bacon",
            "Matikan api dan tuangkan campuran telur dan keju parmesan, aduk rata hingga membentuk saus",
            "Taburi dengan lada hitam dan peterseli, sajikan hangat"
        ]
    )
}


