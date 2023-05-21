//
//  MealView.swift
//  Skripsi
//
//  Created by Mac-albert on 21/05/23.
//

import SwiftUI

struct MealView: View {
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading, spacing: 16.0){
                Group{
                    randomShape(geo: geo)
                }
                Group{
                    Text("Get Meal Plan").font(.headline)
                    mealPlan(geo: geo)
                }
                Group{
                    Text("Choosen Meal Plan").font(.headline)
                }
                Spacer()
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }.padding(16)
    }
    // TODO: navigation bar title kalo udah di pasing dari depan
    
    func mealPlan(geo: GeometryProxy) -> some View{
        HStack{
            mealPlanItem(backgroundColor: Color.blue, image: "", description: "Generate your Personalized Healthy meal plan", titleItem: "Personalized", geo: geo)
            Spacer()
            mealPlanItem(backgroundColor: Color(hex: "#F0BB62"), image: "", description: "Get Meal Reccomendation based on your available time", titleItem: "Automated", geo: geo)
        }
    }
    
    func mealPlanItem(backgroundColor: Color, image: String, description: String, titleItem: String, geo: GeometryProxy) -> some View{
        ZStack{
            Rectangle()
                .foregroundColor(backgroundColor)
                .cornerRadius(16)
            VStack(alignment: .center, spacing: 8){
                
                Text(titleItem).font(.headline)
                Text(description).font(.caption).multilineTextAlignment(.center)
            }
        }.frame(width: geo.size.width * 0.47, height: geo.size.width * 0.45)
    }
    
    func randomShape(geo: GeometryProxy) -> some View{
        ZStack{
            Rectangle()
                .foregroundColor(Color.red)
            
            Image("M-Logo")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .position(x: geo.size.width - 25, y: geo.size.height - 25)
            
            
            HStack{
                VStack(alignment: .leading){
                    Text("Hi, Name")
                    // TODO: Get User.name
                    Text("Lets Eat Healthy")
                }
                Spacer()
                
            }
        }.frame(width: geo.size.width, height: geo.size.height * 0.3)
        
    }
}



struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
