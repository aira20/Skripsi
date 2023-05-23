//
//  SearchTabItemViewModel.swift
//  Skripsi
//
//  Created by Mac-albert on 23/05/23.
//

import Foundation
import SwiftUI

class SearchTabItemViewModel: ObservableObject{
    @Published var choosenMealsPlan: [Meal] = []
    
    @Published var items: [Barang] = [
        Barang(name: "Item 1", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 2", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 3", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 4", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 5", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 6", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang")
    ]

    @Published var gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    init() {
        
    }
    
}

struct Barang: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}
