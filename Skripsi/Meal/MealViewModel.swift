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
    
    init() {
        
    }
    
}
