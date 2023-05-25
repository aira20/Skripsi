//
//  LoginView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 24/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack
        {
            Color(hex: "FFF9F0").edgesIgnoringSafeArea(.all)
            VStack() {
//                Text("Login")
//                    .padding(.bottom, 30)
                VStack(alignment: .leading, spacing: 15) {
                    
                    Text("Username")
                        .font(.system(size: 16))
                    
                    TextField("", text: self.$email)
                        .padding()
                        .border(Color(hex: "F0BB62"))
                        .cornerRadius(50.0)
                        
//                        .background(.white)
                    
                    Text("Password")
                        .font(.system(size: 16))
                    
                    SecureField("", text: self.$password)
                        .padding()
                        .border(Color(hex: "F0BB62"))
                        .cornerRadius(50.0)
//                        .background(.white)
                    
                    HStack
                    {
                        Spacer()
                        Button("Forgot Password?")
                        {
                            
                        }
                        .padding()
                        .font(.system(size: 14))
                                        
                    }
                    
                    
                    
                    Button(action: { }) {
                        Text("Sign in").padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "519259"))
                    .foregroundColor(.white)
                    .cornerRadius(50.0)
                    .padding(.bottom,15)
                    
                    Text("Don't have an Account?")
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .center)
                    Button(action: {})
                    {
                        Text("Create Account")
                            .frame(maxWidth: .infinity, alignment:.center)
                            .font(.system(size:15))
                    }
                    
                    Spacer()
                    
                  
                        
                    
                }.padding([.leading, .trailing], 27.5)
                
               
                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
