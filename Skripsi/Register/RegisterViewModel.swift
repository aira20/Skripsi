//
//  RegisterViewModel.swift
//  Skripsi
//
//  Created by Aria Rifqi on 26/05/23.
//

import Foundation
import SwiftUI
import FirebaseAuth



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


class RegisterViewModel: ObservableObject
{
    let authManager = AuthManager()
    
    @Published var email = ""
    @Published var password = ""
    @Published var FullName = ""
    
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




