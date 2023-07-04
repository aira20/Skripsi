//
//  seeMoreMealCurrentView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/05/23.
//

import SwiftUI

struct PersonalizedView: View {
    @EnvironmentObject var navigationStatus: NavigationStatus
    
    @State var isEditMealSeelcted: Bool = false
    
    @StateObject private var viewModel: PersonalizedViewModel
    
    init(context: ContextMealViewModel) {
        _viewModel = StateObject(wrappedValue: PersonalizedViewModel(context: context))
    }
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    VStack(spacing: 16){
                        ForEach(1...viewModel.context.dayTimes, id: \.self) { number in
                            repetitiveDay(dayCount: number)
                        }
                    }
                }
            }
            .sheet(isPresented: $isEditMealSeelcted){
                SearchTabItemView()
                    .navigationBarTitle("", displayMode: .inline)
            }
            .padding(16)
            .navigationTitle(Text("Personalized Meal Plan"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        navigationStatus.isModalTimesShow = false
                        navigationStatus.isPersonalizedShow = false
                    }) {
                        Text("Cancel")
                    }
                }
            }
        }
    }
    
    func repetitiveDay(dayCount: Int) -> some View{
        var personalizedRecipes: [Meal] = viewModel.randomMealFromRecipes()
        
        return VStack{
            HStack{
                Text("Day \(dayCount)")
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
            DayMealItem(randomRecipes: personalizedRecipes)
                .background(Color(hex: "#FFE3B3"))
                .cornerRadius(12)
        }
    }
    
}

struct PersonalizedView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalizedView(context: ContextMealViewModel.preview)
    }
}
