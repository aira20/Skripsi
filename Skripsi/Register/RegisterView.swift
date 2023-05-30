//
//  RegisterView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 24/05/23.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct RegisterView: View {
    private let firebaseManager = FirebaseManager()
    let authManager = AuthManager()
    
    //====== For Credentials ======//
    @State private var FullName = ""
    @State private var email = ""
    @State private var password = ""
    
    //====== For Password eye button ======//
    @State var visible = false
    @State private var isSecured : Bool=true
    
    //====== For Number Picker ======//
    @State private var selections1: [Double] = [0, 0]
    private let data1: [[Double]] = [
            Array(stride(from: 0, through: 24, by: 1)),
            Array(stride(from: 0, through: 60, by: 1))
        ]
    
    
    var body: some View {
        
        ZStack
        {
            Color(hex: "FFF9F0").edgesIgnoringSafeArea(.all)
            VStack() {

                VStack(alignment: .leading, spacing: 15) {
                    Group
                    {
                        Text("Full Name")
                            .font(.system(size: 16))
                        
                        TextField("", text: self.$FullName)
                            .padding()
                            .border(Color(hex: "F0BB62"))
                            .cornerRadius(50.0)
                            
                        Text("Email")
                            .font(.system(size: 16))
                        
                        TextField("", text: self.$email)
                            .padding()
                            .border(Color(hex: "F0BB62"))
                            .cornerRadius(50.0)
                    }
                    
                    
                    Group
                    {
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
                        
                        Text("Confirm Password")
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
       
       
                    }
                    
//
//                    Group
//                    {
//                        Text("How much time do you need to prepare your food?")
//                            .font(.system(size: 16))
//                    }
//
//                            VStack {
//                                HStack{
//                                    MultiWheelPicker(selections: self.$selections1, data: data1)
//                                        .frame(width: 150)
//                                }
//                            }
//                            .padding(.bottom)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//
//
                        
                    //Sign Up Button
                    
                    Button(action: register) {
                        Text("Sign Up").padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "519259"))
                    .foregroundColor(.white)
                    .cornerRadius(50.0)
                    .padding(.bottom,15)
                    
                    Spacer()
                  
                }
                .padding([.leading, .trailing], 27.5)
                
               
                
                
            }
        }
    }
    
    
    //Function Register Email Fullname and Password
    
//    private func register() {
//        authManager.registerUser(email: email, FullName: FullName, password: password)() { result in
//            switch result {
//            case .success:
//                // Registration successful
//                print("Registration successful")
//                // Perform additional actions or navigate to the next view
//            case .failure(let error):
//                // Registration failed
//                print("Registration failed: \(error.localizedDescription)")
//            }
//        }
//    }
    
//    TODO: GABOLE ADA FUNCTION LOGIC DI VIEW, PINDAHIN KE VIEW MODEL 
    func register() {
        authManager.registerUser(email: email, password: password, fullName: FullName) { (result, error) in
            if let error = error {
                print("Registration failed: \(error.localizedDescription)")
            } else {
                print("Registration successful!")
            }
        }
    }
    
}
    
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
