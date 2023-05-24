//
//  AutomatedOverlayTimesView.swift
//  Skripsi
//
//  Created by Mac-albert on 24/05/23.
//

import SwiftUI

struct AutomatedOverlayTimesView: View {
    @Binding var isOverlayView: Bool
    @Binding var isModalMealPlan: Bool
    @Binding var isModalTimes: Bool
    @State private var selectedOption = 0
    
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
                ForEach(0..<10) { index in
                    HStack{
                        Text("\(index)")
                        Text("Times")
                            .font(.headline)
                    }
                }
            }
            .pickerStyle(.wheel)
            
            HStack{
                Spacer()
                Button {
                    isOverlayView = false
                    isModalMealPlan = false
                    isModalTimes = false
                } label: {
                    HStack{
                        Text("Generate")
                        Image(systemName: "chevron.right")
                    }
                }
                .foregroundColor(Color(hex: "#519259"))
            }
        }
        .foregroundColor(Color(hex: "#1D4536"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(24)
    }
}

