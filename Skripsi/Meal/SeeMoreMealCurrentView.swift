//
//  seeMoreMealCurrentView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/05/23.
//

import SwiftUI

struct SeeMoreMealCurrentView: View {
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
        .padding(16)
    }
    
    func repetitiveDay() -> some View{
        VStack{
            HStack{
                Text("Day 1")
                    .font(.headline)
                Spacer()
                Text("Edit Meal")
                    .font(.subheadline)
                    .foregroundColor(Color(hex: "#519259"))
            }
            dayMealItem()
        }
    }
    
    func dayMealItem() -> some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.clear)
            
            HStack{
                mealItem(bestTimeConsume: .breakfast, image: "heart.fill", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
                mealItem(bestTimeConsume: .lunch, image: "sparkles.square.filled.on.square", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
                mealItem(bestTimeConsume: .dinner, image: "figure.walk.circle", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .frame(width: .infinity)
        }
    }
    
    func mealItem(bestTimeConsume: Meal.Status, image: String, mealName: String, mealDescription: String) -> some View {
        VStack(alignment: .center){
            Text(bestTimeConsume.rawValue)
                .font(.headline)
            Image(systemName: image)
                .resizable()
                .frame(width: 75, height: 75)
            Text(mealName)
                .font(.subheadline)
            Text(mealDescription)
                .font(.caption)
                .lineLimit(2)
        }
    }
}

struct SeeMoreMealCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreMealCurrentView()
    }
}
