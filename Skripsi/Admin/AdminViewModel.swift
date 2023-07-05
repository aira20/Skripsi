
//
//  AdminViewModel.swift
//  Skripsi
//
//  Created by Aria Rifqi on 02/06/23.
//

import Foundation
import SwiftUI
import FirebaseFirestore


class AdminViewModel: ObservableObject {
        let accadmn = Image("accadm")
        let recipeadm = Image("recipeadm")
        
        @Published var users: [UserInfo] = []
        private var db = Firestore.firestore()
        
        init() {
            fetchUsers()
        }
    
        //Fetching users from databasaee
    
        func fetchUsers() {
            db.collection("users").addSnapshotListener { querySnapshot, error in
                guard let documents = querySnapshot?.documents else {
                    print("Error fetching users: \(error?.localizedDescription ?? "Unknown error")")
                    return
                }
                
                self.users = documents.compactMap { document in
                    let username = document.data()["username"] as? String
                    let email = document.data()["email"] as? String
                    let id = document.documentID
                    
                    return UserInfo(id: id, username: username ?? "", email: email ?? "")
                }
                
            }
        }
        
        
        func deleteUser(_ user: UserInfo) {
            db.collection("users").document(user.id).delete { error in
                if let error = error {
                    print("Error deleting user: \(error.localizedDescription)")
                } else {
                    print("User deleted successfully!")
                }
            }
        }
        
        func deleteUsers(at offsets: IndexSet) {
            let usersToDelete = offsets.map { users[$0] }
            for user in usersToDelete {
                deleteUser(user)
            }
        }
        
    func filteredUsers(searchText: String) -> [UserInfo] {
        if searchText.isEmpty {
            return users
        } else {
            return users.filter { user in
                user.username.localizedCaseInsensitiveContains(searchText)
                || user.email.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
        
        
    }
    
    struct UserInfo: Identifiable {
        let id: String
        let username: String
        let email: String
    }

