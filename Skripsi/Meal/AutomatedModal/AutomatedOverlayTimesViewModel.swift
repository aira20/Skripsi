//
//  AutomatedOverlayTimesViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 04/07/23.
//

import Foundation

class AutomatedOverlayTimesViewModel: ObservableObject{
    @Published var context: AutomatedMealViewModel
    
    init(context: AutomatedMealViewModel) {
        self.context = context
        
    }
}
