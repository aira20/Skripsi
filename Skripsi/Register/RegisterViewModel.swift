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
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    private var db = Firestore.firestore()
    
    func register() {
        authManager.registerUser(email: email, password: password, fullName: username) { (result, error) in
            if let error = error {
                print("Registration failed: \(error.localizedDescription)")
            } else {
                print("Registration successful!")
            }
        }
    }
    
    //TEMPLATE EMAIL FORMAT SO USERS SO THEY INSERT THE CORRECT FORMAT WHEN ENTERING THEIR EMAIL
    
    private func isValidEmail(_ email: String) -> Bool {
        // Regular expression pattern for email validation
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    private var isInputValid: Bool {
        
        // Check if all fields are filled
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            return false
        }
        
        // Check if passwords match
        guard password == confirmPassword else {
            return false
        }
        
        //Check if email is in the correct format
        guard isValidEmail(email) else {
                return false
            }
 
        
        return true
    }
}



