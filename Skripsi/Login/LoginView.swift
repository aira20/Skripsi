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
    @State var visible = false
    @State private var isSecured : Bool=true
    
    var authManager = AuthManager()
    
    var body: some View {
        ZStack
        {
            Color(hex: "FFF9F0").edgesIgnoringSafeArea(.all)
            VStack() {

                VStack(alignment: .leading, spacing: 15) {
                    
                    Text("Email")
                        .font(.system(size: 16))
                    
                    TextField("", text: self.$email)
                        .padding()
                        .border(Color(hex: "F0BB62"))
                        .cornerRadius(50.0)
                    
                    Text("Password")
                        .font(.system(size: 16))
                    
                    ZStack(alignment: .trailing)
                    {
                        Group{
                            
                            if isSecured
                            {
                                SecureField("", text: self.$password)
                                    .padding()
                                    .border(Color(hex: "F0BB62"))
                                    .cornerRadius(50.0)
                            }
                            else
                            {
                                TextField("", text: self.$password)
                                    .padding()
                                    .border(Color(hex: "F0BB62"))
                                    .cornerRadius(50.0)
                            }
                            
                        }
                        Button(action: {
                                        isSecured.toggle()
                                    }) {
                                        Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                            .accentColor(.gray)
                                    }
                       
                    }
                
                    HStack
                    {
                        Spacer()
                        Button("Forgot Password?")
                        {
                            
                        }
                        .padding()
                        .font(.system(size: 14))
                                        
                    }
                    
                    
                    
                    Button(action: {
                        signIn()
                    }) {
                        Text("Sign in")
                            .padding()
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
                }
                .padding([.leading, .trailing], 27.5)
            }
        }
    }
//    TODO: GABOLE ADA FUNCTION LOGIC DI VIEW, PINDAHIN KE VIEW MODEL 
    func signIn() {
        authManager.signIn(email: email, password: password) { (result, error) in
            if let error = error {
                print("Sign in failed: \(error.localizedDescription)")
            } else {
                print("Sign in successful!")
            }
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
