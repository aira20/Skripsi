//
//  seeMoreMealCurrentView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/05/23.
//

import SwiftUI

struct SeeMoreMealCurrentView: View {
    @StateObject var viewModel = SeeMoreMealCurrentViewModel()
    
    var sectionHeader: some View {
        HStack {
            Text("Day 1")
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.title3)
                .textCase(.none) // Menonaktifkan gaya huruf kapital
            Spacer()
            Text("Edit Meal")
                .foregroundColor(Color(hex: "#519259"))
                .font(.subheadline)
                .textCase(.none) // Menonaktifkan gaya huruf kapital
        }
    }
    
    var body: some View {
        Form{
//            ForEach(viewModel.currentMeals, id: \.self) { meal in
//                
//            }
            Section(header: sectionHeader){
                dayMealItem()
            }
            
        }
    }
    
//    func repetitiveDay() -> some View{
//
//    }
    
    func dayMealItem() -> some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.clear)
            HStack{
                mealItem()
                    .frame(maxWidth: .infinity, alignment: .center)
                mealItem()
                    .frame(maxWidth: .infinity, alignment: .center)
                mealItem()
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .frame(width: .infinity)
        }
    }
    
    func mealItem() -> some View {
        VStack{
            Text("Breakfast")
                .font(.headline)
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 75, height: 75)
            Text("Roti Lapis")
                .font(.headline)
            Text("Roti dengan Alpukat dan Telur")
                .font(.subheadline)
        }
    }
}

struct SeeMoreMealCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreMealCurrentView()
    }
}
