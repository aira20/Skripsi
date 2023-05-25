//
//  WelcomeView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 23/05/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack
        {
//            Color(hex: "FFF9F0").edgesIgnoringSafeArea(.all)
            //Color of background still not complete
            
            
            NavigationView
            {
                
                VStack
                {
                    
                    Image("logo")
                    Spacer()
                    
                    
                    
                    NavigationLink(destination: RegisterView())
                    {
                        Text("Register")
                            .font(.title3)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(hex: "519259"))
                            .cornerRadius(15.0)
                        
                    }
                    
                    
                    NavigationLink(destination: LoginView())
                    {
                        Text("Login")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .border(Color(hex: "519259"))
                            .foregroundColor(.black)
                            .cornerRadius(15.0)
                        
                    }
                    Spacer()
                }
                
                
            }
            
            .padding()
        }
        
        
            
            
          
        }
        
    }
    
        

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
