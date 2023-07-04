//
//  AutomatedMealViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 04/07/23.
//

import Foundation

class ContextMealViewModel: ObservableObject{
    var timeCommitment: Int = 0
    var dayTimes: Int = 0
}

extension ContextMealViewModel{
    static let preview: ContextMealViewModel = ContextMealViewModel()

}
