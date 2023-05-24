//
//  seeMoreMealCurrentView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/05/23.
//

import SwiftUI

struct SeeMoreMealCurrentView: View {
    @State var isEditMealSeelcted: Bool = false
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 16){
                    repetitiveDay()
                    repetitiveDay()
                    repetitiveDay()
                    repetitiveDay()
                    repetitiveDay()
                    repetitiveDay()
                }
            }
        }
        .sheet(isPresented: $isEditMealSeelcted){
            SearchTabItemView()
                .navigationBarTitle("", displayMode: .inline)
        }
        .padding(16)
    }
    
    func repetitiveDay() -> some View{
        VStack{
            HStack{
                Text("Day 1")
                    .font(.headline)
                Spacer()
                Button {
                    isEditMealSeelcted = true
                } label: {
                    Text("Edit Meal")
                        .font(.subheadline)
                        .foregroundColor(Color(hex: "#519259"))
                }

            }
            dayMealItem()
                .background(Color(hex: "#FFE3B3"))
                .cornerRadius(12)
        }
    }
    
    func dayMealItem() -> some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.clear)
            
            HStack{
                MealItemView(bestTimeConsume: .breakfast, image: "heart.fill", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
                MealItemView(bestTimeConsume: .lunch, image: "sparkles.square.filled.on.square", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
                MealItemView(bestTimeConsume: .dinner, image: "figure.walk.circle", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(4)
            .frame(width: .infinity)
        }
    }
}

struct SeeMoreMealCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreMealCurrentView()
    }
}
