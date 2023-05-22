//
//  MealViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 21/05/23.
//

import Foundation
import SwiftUI

class MealViewModel: ObservableObject{
    @Published var meals: [Meal]?
    @Published var choosenMealsPlan: [Meal] = []
    
    var view: MealTabItemView?
    
    init() {
        
    }
    
    func choosenMealPlanSection(geo: GeometryProxy) {
        if choosenMealsPlan == nil {
            view?.choosenMealPlanSectionNull(geo: geo)
        } else {
            EmptyView()
        }
    }
}
