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
    
//    func loginUser(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
//        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
//            if let error = error {
//                completion(.failure(error))
//                print("Login Error, Please try again.")
//            } else {
//                completion(.success(()))
//                print("Login Successful")
//            }
//        }
//    }
    
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








    


