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
    
    var user: User?
    

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
            
            let userData = User(id: userId, name: fullName, password: password, email: email, accountCreated: Date(), time: nil, frequency: nil)

            do{
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
    
    func signIn(email: String, password: String, completion: @escaping (AuthDataResult?, Error?) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let user = Auth.auth().currentUser {
                print(self.fetchUser(userID: user.uid))
            }
            
            completion(result, error)
        }
        
    }
    
    func fetchUser(userID: String) -> Bool {
        let db = Firestore.firestore()
        let userRef = db.collection("users").document(userID)
        
        userRef.getDocument { (document, error) in
            if let document = document, document.exists {
                do {
                    let fetchedUser = try document.data(as: User.self)
                                        // Simpan hasil pengambilan data pengguna ke dalam @State
                    DispatchQueue.main.async {
                        self.user = fetchedUser
                    }
                } catch {
                    print("Error decoding user: \(error.localizedDescription)")
                }
            } else {
                print("User document not found")
            }
        }
//
        if ((self.user?.isAdmin) != nil) {
            return true
        } else {
            return false
        }
    }
}
