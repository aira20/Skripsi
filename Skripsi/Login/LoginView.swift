//
//  LoginView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 24/05/23.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct LoginView: View {

    @StateObject private var viewModel = LoginViewModel()
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
                    
                    TextField("", text: $viewModel.email)
                        .padding()
                        .border(Color(hex: "F0BB62"))
                        .cornerRadius(50.0)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Text("Password")
                        .font(.system(size: 16))
                    
                    ZStack(alignment: .trailing)
                    {
                        Group{
                            
                            if isSecured
                            {
                                SecureField("", text: $viewModel.password)
                                    .padding()
                                    .border(Color(hex: "F0BB62"))
                                    .cornerRadius(50.0)
                            }
                            else
                            {
                                TextField("", text: $viewModel.password)
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
                        viewModel.signIn { success in
                            if success {
                                if viewModel.isAdmin {
                                    //TODO: Redirect to Admin Page
                                } else {
                                    //TODO: Redirect to User Page
                                }
                            } else {
                                //TODO: Handle sign-in failure
                            }
                        }
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
                    Button(action: {
                        RegisterView()
                    })
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

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
