//
//  RegisterViewModel.swift
//  Skripsi
//
//  Created by Aria Rifqi on 26/05/23.
//

import Foundation
import SwiftUI
import FirebaseAuth
import Firebase

class RegisterViewModel: ObservableObject {
    
    let authManager = AuthManager()
    
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    private var db = Firestore.firestore()
    
    func registerUser() {
//        guard isInputValid else { return }
        
        let user = User(name: fullName, email: email)
        
        db.collection("users").addDocument(data: [
            "username": user.name,
            "email": user.email,
            "password": password
        ]) { error in
            if let error = error {
                print("Error adding document: \(error)")
            } else {
                print("User registered successfully!")
            }
        }
    }
    
    func register() {
        authManager.registerUser(email: email, password: password, fullName: fullName) { (result, error) in
            if let error = error {
                print("Registration failed: \(error.localizedDescription)")
            } else {
                print("Registration successful!")
            }
        }
    }
    
    private var isInputValid: Bool {
        
        // Check if all fields are filled
        guard !fullName.isEmpty, !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            return false
        }
        
        // Check if passwords match
        guard password == confirmPassword else {
            return false
        }
 
        
        return true
    }
}



