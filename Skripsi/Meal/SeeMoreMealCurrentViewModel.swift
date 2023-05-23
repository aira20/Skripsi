//
//  SeeMoreMealCurrentViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 22/05/23.
//

import Foundation

class SeeMoreMealCurrentViewModel: ObservableObject{
    @Published var currentMeals: [Meal] = []
    
    init() {
    }
}
