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

    private var db = Firestore.firestore()
    
    func signIn(completion: @escaping (Bool) -> Void) {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let error = error {
                    print("Error logging in: \(error)")
                    completion(false)
                } else {
                    print("User logged in successfully!")
                    completion(true)
                }
            }
        }
    
}








    


