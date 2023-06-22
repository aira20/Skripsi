//
//  AutomatedOverlayMealPlanView.swift
//  Skripsi
//
//  Created by Aria on 24/05/23.
//

import SwiftUI

struct AutomatedOverlayMealPlanView: View {
    @Binding var isOverlayView: Bool
    @Binding var isModalMealPlan: Bool
    @Binding var isModalTimes: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            VStack(spacing: 16){
                Text("Automated Meal Plan")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .fontWeight(.bold)
                Text("Here some meal recommendation based on your available time")
                    .padding(.horizontal, 32)
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
            }.padding(.bottom, 40)
            
            HStack{
                MealItemView(bestTimeConsume: .breakfast, image: "heart.fill", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
                MealItemView(bestTimeConsume: .lunch, image: "sparkles.square.filled.on.square", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
                MealItemView(bestTimeConsume: .dinner, image: "figure.walk.circle", mealName: "Roti Lapis", mealDescription: "Roti dengan Sayur-sayuran")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.vertical, 40.0)
            .frame(width: .infinity)
            
            Button {
                
            } label: {
                HStack{
                    Image(systemName: "arrow.clockwise")
                    Text("Refresh Menu")
                }
            }
            
            HStack{
                Spacer()
                Button {
                    isModalTimes = true
                } label: {
                    HStack{
                        Text("Generate")
                        Image(systemName: "chevron.right")
                    }
                }
                .foregroundColor(Color(hex: "#519259"))
            }
        }
        .sheet(isPresented: $isModalTimes) {
            AutomatedOverlayTimesView(isOverlayView: $isOverlayView, isModalMealPlan: $isModalMealPlan, isModalTimes: $isModalTimes)
        }
        .foregroundColor(Color(hex: "#1D4536"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(24)
    }
}

//struct AutomatedOverlayMealPlanView_Previews: PreviewProvider {
//    static var previews: some View {
//        AutomatedOverlayMealPlanView()
//    }
//}
