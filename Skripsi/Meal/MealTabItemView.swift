//
//  MealView.swift
//  Skripsi
//
//  Created by Mac-albert on 21/05/23.
//

import SwiftUI

struct MealTabItemView: View {
    @StateObject private var viewModel = MealViewModel()
    
    var body: some View {
        NavigationView{
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 16.0){
                    Group{
                        welcomeSection(geo: geo)
                    }
                    Group{
                        Text("Get Meal Plan").font(.headline)
                        mealPlan(geo: geo)
                    }
                    Group{
                        HStack{
                            Text("Choosen Meal Plan").font(.headline)
                            Spacer()
                            NavigationLink(destination: SeeMoreMealCurrentView()){
                                Text("See more")
                                    .font(.subheadline)
                                    .foregroundColor(Color(hex: "#519259"))
                            }
                        }
    //                    viewModel.choosenMealPlanSection(geo: geo)
                    }
                    Spacer()
                    
                }
                .frame(width: geo.size.width, height: geo.size.height)
            }.padding(16)
                .navigationTitle("Meal")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Tindakan yang ingin dilakukan saat tombol ditekan
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(Color(hex: "#1D4536"))
                        }
                    }
                }
        }
        
    }
    // TODO: navigation bar title kalo udah di pasing dari depan
    
    func mealPlan(geo: GeometryProxy) -> some View{
        HStack{
            mealPlanItem(backgroundColor: Color(hex: "#91B898"), image: "", description: "Generate your Personalized Healthy meal plan", titleItem: "Personalized", geo: geo)
            Spacer()
            mealPlanItem(backgroundColor: Color(hex: "#F0D19D"), image: "", description: "Get Meal Reccomendation based on your available time", titleItem: "Automated", geo: geo)
        }
    }
    
    func mealPlanItem(backgroundColor: Color, image: String, description: String, titleItem: String, geo: GeometryProxy) -> some View{
        ZStack{
            NavigationLink(destination: EmptyView()){
                Rectangle()
                    .foregroundColor(backgroundColor)
                    .cornerRadius(16)
            }
            VStack(alignment: .center, spacing: 8){
                
                Text(titleItem).font(.headline)
                Text(description).font(.caption).multilineTextAlignment(.center)
            }
        }.frame(width: geo.size.width * 0.47, height: geo.size.width * 0.45)
    }
    
    func choosenMealPlanSectionNull(geo: GeometryProxy) -> some View{
        ZStack{
            Rectangle()
                .fill(.pink)
                .cornerRadius(16)
            VStack(spacing: 12){
                Text("You haven't chosen any meal plan yet")
                    .multilineTextAlignment(.center)
                Text("Browser Meal")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex: "#519259"))
            }.frame(width: geo.size.width * 0.5)
        }
    }
    
    func welcomeSection(geo: GeometryProxy) -> some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color(hex: "CCFFD2"), Color(hex: "FFE3B3")]), startPoint: .trailing, endPoint: .leading))
                .cornerRadius(16)
//                .clipShape(CustomShape())
            
            HStack{
                VStack(alignment: .leading){
                    Text("Welcome")
                        .font(.title2)
                        .foregroundColor(Color(hex: "#1D4536"))
                    // TODO: Get User.name
                    Text("Lets Eat Healthy with us!")
                        .foregroundColor(Color(hex: "#1D4536"))
                }
                .padding(16)
                Spacer()
                
            }
        }.frame(width: geo.size.width, height: geo.size.height * 0.3)
        
    }
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 20, height: 20))
        
        let bottomRightCorner = CGRect(
            x: rect.width - 40,
            y: rect.height - 40,
            width: 40,
            height: 40
        )
        
        path.addRect(bottomRightCorner)
        
        return path
    }
}


struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealTabItemView()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE(3rd generation"))
//            .previewDisplayName("iPhone SE")
    }
}
