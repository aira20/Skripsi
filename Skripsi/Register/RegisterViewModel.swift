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


let authManager = AuthManager()

//TODO: DON'T FORGET TO GET BACK TO THIS PROBLEM, NUMBER WHEEL PICKER

struct MultiWheelPicker: UIViewRepresentable {
    var selections: Binding<[Double]>
    let data: [[Double]]
    
    func makeCoordinator() -> MultiWheelPicker.Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MultiWheelPicker>) -> UIPickerView {
        let picker = UIPickerView()
        picker.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        
        picker.dataSource = context.coordinator
        picker.delegate = context.coordinator
        
        return picker
    }
    
    func updateUIView(_ view: UIPickerView, context: UIViewRepresentableContext<MultiWheelPicker>) {
        for comp in selections.indices {
            if let row = data[comp].firstIndex(of: selections.wrappedValue[comp]) {
                view.selectRow(row, inComponent: comp, animated: false)
            }
        }
    }
    
    class Coordinator: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
        var parent: MultiWheelPicker
      
        init(_ pickerView: MultiWheelPicker) {
            parent = pickerView
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return parent.data.count
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return parent.data[component].count
        }
        
        func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
            return 30
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return String(format: "%02.0f", parent.data[component][row])
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            parent.selections.wrappedValue[component] = parent.data[component][row]
        }
    }
    
}

//====== For Saving data store in Firebase ======//

class FirebaseManager {
    func register(email: String, FullName: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Registration failed: \(error.localizedDescription)")
            } else {
                completion(.success(()))
            }
        }
    }
    
   
    }


class RegisterViewModel: ObservableObject {
    
    let authManager = AuthManager()
    
    struct User
    {
        let username: String
        let email: String
        let password: String
    }
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    
    private var db = Firestore.firestore()
    
    func register() {
        guard isInputValid else { return }
        
        let user = User(username: username, email: email, password: password)
        
        // Check if the email already exists in the Firestore collection
        db.collection("users").whereField("email", isEqualTo: user.email).getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error checking email existence: \(error)")
                return
            }
            
            guard let documents = querySnapshot?.documents else {
                // Email doesn't exist, proceed with registration
                self.registerUser(user)
                return
            }
            
            if documents.isEmpty {
                // Email doesn't exist, proceed with registration
                self.registerUser(user)
            } else {
                // Email already exists
                print("An account with this email already exists.")
            }
        }
    }

    private func registerUser(_ user: User) {
        db.collection("users").addDocument(data: [
            "username": user.username,
            "email": user.email,
            "password": user.password
        ]) { error in
            if let error = error {
                print("Error adding document: \(error)")
            } else {
                print("User registered successfully!")
            }
        }
    }
    func singIn(completion: @escaping (Bool) -> Void) {
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



