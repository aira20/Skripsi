//
//  LoginViewModel.swift
//  Skripsi
//
//  Created by Aria Rifqi on 30/05/23.
//

import Foundation
import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
    func loginUser(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                completion(.failure(error))
                print("Login Error, Please try again.")
            } else {
                completion(.success(()))
                print("Login Successful")
            }
        }
    }
    
}



    


