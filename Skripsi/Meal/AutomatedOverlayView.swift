//
//  AutomatedOverlayView.swift
//  Skripsi
//
//  Created by Aria on 23/05/23.
//

import SwiftUI

struct AutomatedOverlayView: View {
    @State private var selectedHour = 0
    @State private var selectedMinute = 0
    @Binding var isOverlayView: Bool
    @Binding var isModalMealPlan: Bool
    @Binding var isModalTimes: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            Text("How much your available time to prepare your food?")
                .multilineTextAlignment(.center)
                .font(.title3)
                .fontWeight(.bold)
                
            Text("We need the data to recommend you the suitable meal based on your available time")
                .padding(.horizontal, 32)
                .multilineTextAlignment(.center)
                .font(.subheadline)
            HStack {
                Picker("Hour", selection: $selectedHour) {
                    ForEach(0..<24) { hour in
                        HStack{
                            Text("\(hour)")
                            Text("hours")
                                .font(.headline)
                        }
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: 100)

                Picker("Minute", selection: $selectedMinute) {
                    ForEach(0..<60) { minute in
                        HStack{
                            Text(String(format: "%02d", minute))
                            Text("min")
                                .font(.headline)
                        }
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: 100)
            }
            HStack{
                Spacer()
                Button {
                    isModalMealPlan = true
                } label: {
                    HStack{
                        Text("Generate")
                        Image(systemName: "chevron.right")
                    }
                }
                .foregroundColor(Color(hex: "#519259"))
            }
        }
        .sheet(isPresented: $isModalMealPlan) {
            AutomatedOverlayMealPlanView(isOverlayView: $isOverlayView, isModalMealPlan: $isModalMealPlan, isModalTimes: $isModalTimes)
        }
        .foregroundColor(Color(hex: "#1D4536"))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(24)
    }
}

//struct AutomatedOverlayView_Previews: PreviewProvider {
//    static var previews: some View {
//        AutomatedOverlayView()
//    }
//}
