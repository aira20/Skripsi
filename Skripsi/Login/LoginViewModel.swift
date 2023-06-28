//
//  LoginViewModel.swift
//  Skripsi
//
//  Created by Aria Rifqi on 30/05/23.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    let authManager = AuthManager()
    
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








    


