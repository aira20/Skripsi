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
    @StateObject private var viewModel = RegisterViewModel()
    @State private var isPasswordSecured = true
    @State private var isConfirmPasswordSecured = true

    var body: some View {
        ZStack {
            Color(hex: "FFF9F0").edgesIgnoringSafeArea(.all)
            VStack {
                VStack(alignment: .leading, spacing: 15) {
                    Group {
                        Text("Full Name")
                            .font(.system(size: 16))

                        TextField("", text: $viewModel.username)
                            .padding()
                            .border(Color(hex: "F0BB62"))
                            .cornerRadius(50.0)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)

                        Text("Email")
                            .font(.system(size: 16))

                        TextField("", text: $viewModel.email)
                            .padding()
                            .border(Color(hex: "F0BB62"))
                            .cornerRadius(50.0)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }

                    Group {
                        Text("Password")
                            .font(.system(size: 16))

                        ZStack(alignment: .trailing) {
                            if isPasswordSecured {
                                SecureField("", text: $viewModel.password)
                            } else {
                                TextField("", text: $viewModel.password)
                            }

                            Button(action: {
                                isPasswordSecured.toggle()
                            }) {
                                Image(systemName: isPasswordSecured ? "eye.slash" : "eye")
                                    .accentColor(.gray)
                            }
                        }
                        .padding()
                        .border(Color(hex: "F0BB62"))
                        .cornerRadius(50.0)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)

                        Text("Confirm Password")
                            .font(.system(size: 16))

                        ZStack(alignment: .trailing) {
                            if isConfirmPasswordSecured {
                                SecureField("", text: $viewModel.confirmPassword)
                            } else {
                                TextField("", text: $viewModel.confirmPassword)
                            }

                            Button(action: {
                                isConfirmPasswordSecured.toggle()
                            }) {
                                Image(systemName: isConfirmPasswordSecured ? "eye.slash" : "eye")
                                    .accentColor(.gray)
                            }
                        }
                        .padding()
                        .border(Color(hex: "F0BB62"))
                        .cornerRadius(50.0)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    }
                }

                Button(action: {
                    viewModel.register()
                }) {
                    Text("Sign Up")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(hex: "519259"))
                .foregroundColor(.white)
                .cornerRadius(50.0)
                .padding(.bottom, 15)

                Spacer()
            }
            .padding([.leading, .trailing], 27.5)
        }
    }
}

    
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
