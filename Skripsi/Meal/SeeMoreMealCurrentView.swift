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
                VStack{
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
                mealItem()
                mealItem()
                mealItem()
            }
            .frame(width: .infinity)
        }
    }
    
    func mealItem() -> some View {
        VStack{
            Text("Breakfast")
            Image(systemName: "heart.fill")
            Text("Roti Lapis")
            Text("Roti dengan Alpukat dan Telur")
        }
    }
}

struct SeeMoreMealCurrentView_Previews: PreviewProvider {
    static var previews: some View {
        SeeMoreMealCurrentView()
    }
}
