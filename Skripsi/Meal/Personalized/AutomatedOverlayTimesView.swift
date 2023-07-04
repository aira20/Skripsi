//
//  AutomatedOverlayTimesView.swift
//  Skripsi
//
//  Created by Mac-albert on 24/05/23.
//

import SwiftUI

struct AutomatedOverlayTimesView: View {
    @EnvironmentObject var navigationStatus: NavigationStatus
    
    @Binding var isModalTimes: Bool
    @State private var selectedOption = 0
    
    @StateObject private var viewModel: AutomatedOverlayTimesViewModel
    
    init(context: ContextMealViewModel,
         isModalTimes: Binding<Bool>) {
        _viewModel = StateObject(wrappedValue: AutomatedOverlayTimesViewModel(context: context))
        self._isModalTimes = isModalTimes
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            VStack(spacing: 16){
                Text("How many days do you want to have this meal?")
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .fontWeight(.bold)
                Text("We need the data to generate how many days we will create this meal plan for you")
                    .padding(.horizontal, 32)
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
            }
            Picker(selection: $selectedOption, label: Text("Options")) {
                ForEach(1..<8) { index in
                    HStack{
                        Text("\(index)")
                        Text("Times")
                            .font(.headline)
                    }
                }
            }
            .pickerStyle(.wheel)
            
            
            Button(action: {
                navigationStatus.isPersonalizedShow = true
                navigationStatus.isModalTimesShow = false
                viewModel.context.dayTimes = selectedOption + 1
                print(viewModel.context.dayTimes)
            }) {
               HStack {
                   Spacer()
                   Text("Generate")
                   Image(systemName: "chevron.right")
               }
               .foregroundColor(Color(hex: "#519259"))
            }
            .buttonStyle(PlainButtonStyle())
            
        }
        .fullScreenCover(isPresented: $navigationStatus.isPersonalizedShow) {
            PersonalizedView(context: ContextMealViewModel.preview)
                .environmentObject(navigationStatus)
        }
        .foregroundColor(Color(hex: "#1D4536"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(24)
    }
}

