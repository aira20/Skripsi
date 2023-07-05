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
    
    @StateObject private var viewModel: AutomatedOverlayMealPlanViewModel
    
    init(context: ContextMealViewModel,
         isOverlayView: Binding<Bool>,
         isModalMealPlan: Binding<Bool>) {
        _viewModel = StateObject(wrappedValue: AutomatedOverlayMealPlanViewModel(context: context))
        self._isOverlayView = isOverlayView
        self._isModalMealPlan = isModalMealPlan
    }
    
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
                ForEach(viewModel.randomRecipes , id: \.mealName) { meal in
                    MealItemView(bestTimeConsume: meal.mealDay, image: meal.image, mealName: meal.mealName, mealDescription: meal.mealDescription, isMealStatusPresent: false)
                }
            }
            .padding(.vertical, 40.0)
            .frame(width: .infinity)
            
            Button {
                viewModel.randomMealFromRecipes()
            } label: {
                HStack{
                    Image(systemName: "arrow.clockwise")
                    Text("Refresh Menu")
                }
            }
            
            HStack{
                Spacer()
                Button {
                    isOverlayView = false
                    isModalMealPlan = false
                } label: {
                    HStack{
                        Text("Generate")
                        Image(systemName: "chevron.right")
                    }
                }
                .foregroundColor(Color(hex: "#519259"))
            }
        }
        .onAppear(perform: viewModel.randomMealFromRecipes)
//        .sheet(isPresented: $isModalTimes) {
//            AutomatedOverlayTimesView(context: ContextMealViewModel.preview, isOverlayView: $isOverlayView, isModalMealPlan: $isModalMealPlan, isModalTimes: $isModalTimes)
//        }
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
