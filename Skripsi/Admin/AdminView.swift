//
//  AdminView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 02/06/23.
//

import SwiftUI

struct AdminView: View {
    var body: some View {
        
        NavigationView
        {
            VStack
            {
                Text("Welcome Back!")
                    .font(.system(size:34))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(hex: "1D4536"))
                    
                NavigationLink(destination: ManageAccView())
                {
                    Image("accadm")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .padding(.bottom)
                        
                }
                
                NavigationLink(destination: ManageRecipeView())
                {
                    Image("recipeadm")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                }
                
            
    Spacer()
            }
            .padding()
        }
      
        
        
    }
}

struct AdminView_Previews: PreviewProvider {
    static var previews: some View {
        AdminView()
    }
}
