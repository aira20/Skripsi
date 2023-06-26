//
//  RecipeDetailView.swift
//  Skripsi
//
//  Created by Mac-albert on 25/06/23.
//

import SwiftUI

struct RecipeDetailView: View {
    var bahanUtama: [String] = ["Sayur", "Daging", "Buah"]
    
    @StateObject private var viewModel: RecipeDetailViewModel
    
    init (meal: Meal) {
        _viewModel = StateObject(wrappedValue: RecipeDetailViewModel(meal: meal))
    }
    
    var body: some View {
        VStack(spacing: 12){
            VStack(spacing: 8){
                Image(systemName: "circle.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                HStack{
                    Text(viewModel.meal.mealName)
                    Image(systemName: "info.circle")
                }.font(.title3)
                    .fontWeight(.semibold)
                HStack{
                    HStack{
                        Image(systemName: "clock")
                        Text("30 minutes")
                    }
                    HStack{
                        Image(systemName: "fork.knife.circle")
                        Text("1 Portion")
                    }
                }
                Text(viewModel.meal.mealDescription)
                    .font(.caption)
            }
            List{
                Section(header:
                            Text("Bahan Utama")
                    .font(.headline)
//                    .frame(width: UIScreen.main.bounds.width)
                    .foregroundColor(Color(hex: "#1D4536"))
//                    .background(Color(hex: "#cfd1cf"))
                ){
                    ForEach(viewModel.meal.mainIngredients, id: \.ingredientsName){ ingredient in
                        HStack{
                            Text(ingredient.ingredientsName)
                            Spacer()
                            Text(ingredient.ingredientsQuantity)
                        }
                    }
                }
                Section(header: Text("Bahan Lainnya")
                    .font(.headline)
                    .foregroundColor(Color(hex: "#1D4536"))
                ){
                    ForEach(viewModel.meal.complementaryIngredients, id: \.ingredientsName){ ingredient in
                        HStack{
                            Text(ingredient.ingredientsName)
                            Spacer()
                            Text(ingredient.ingredientsQuantity)
                        }
                    }
                }
                Section(header: Text("Peralatan")
                    .font(.headline)
                    .foregroundColor(Color(hex: "#1D4536"))
                ){
                    ForEach(viewModel.meal.utensils, id: \.untensilName){ utensil in
                        Text(utensil.untensilName)
                    }
                }
                Section(header: Text("Cara Memasak")
                    .font(.headline)
                    .foregroundColor(Color(hex: "#1D4536"))
                ){
                    ForEach(viewModel.meal.steps, id: \.self){ step in
                        Text(step)
                    }
                }
            }.listStyle(.plain)
            
        }.frame(width: UIScreen.main.bounds.width)
    
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(meal: Meal.preview)
    }
}
