//
//  AutomatedOverlayViewViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 04/07/23.
//

import Foundation

class AutomatedOverlayViewModel: ObservableObject{
    @Published var context: AutomatedMealViewModel
    
    init(context: AutomatedMealViewModel) {
        self.context = context
        
    }
}
