//
//  AuthManager.swift
//  Skripsi
//
//  Created by Aria Rifqi on 30/05/23.
//

import Foundation
import Firebase
import FirebaseFirestore

class AuthManager {
    let auth = Auth.auth()
    let db = Firestore.firestore()

    func registerUser(email: String, password: String, fullName: String, completion: @escaping (AuthDataResult?, Error?) -> Void) {
        auth.createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            // User creation successful, save additional user data to Firestore
            guard let userId = result?.user.uid else {
                completion(nil, NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "User ID is missing"]))
                return
            }
            
            let userData = User(id: userId, name: fullName, password: password, email: email, accountCreated: Date(), isAdmin: false)
            
            do {
                try self.db.collection("users").document(userId).setData(from: userData) { error in
                    if let error = error {
                        completion(nil, error)
                    } else {
                        completion(result, nil)
                    }
                }
            } catch {
                completion(nil, error)
            }
        }
    }
    
    func signIn(email: String, password: String, completion: @escaping (AuthDataResult?, Bool, Error?) -> Void) {
        auth.signIn(withEmail: email, password: password) { result, error in
            if let user = result?.user {
                let isAdmin = self.fetchUser(userID: user.uid)
                completion(result, isAdmin, error)
            } else {
                completion(result, false, error)
            }
        }
    }
    
    func fetchUser(userID: String) -> Bool {
        var isAdmin = false
        
        let userRef = db.collection("users").document(userID)
        
        userRef.getDocument { document, error in
            if let document = document, document.exists {
                do {
                    let fetchedUser = try document.data(as: User.self)
                    isAdmin = fetchedUser.isAdmin 
                } catch {
                    print("Error decoding user: \(error.localizedDescription)")
                }
            } else {
                print("User document not found")
            }
        }
        
        return isAdmin
    }
}
