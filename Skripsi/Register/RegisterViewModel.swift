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
        
        //Data user once saved sends it directly to firebase
        
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
    
    private var isInputValid: Bool {
        // Perform input validation here
        // You can add your own validation rules
        
        // Check if all fields are filled
        guard !username.isEmpty, !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            return false
        }
        
        // Check if passwords match
        guard password == confirmPassword else {
            return false
        }
        
        // You can add more validation rules here, like email format validation
        
        return true
    }
}



