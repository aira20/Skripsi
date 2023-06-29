//
//  User.swift
//  Skripsi
//
//  Created by Aria Rifqi on 30/05/23.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable{
    @DocumentID var id: String!
    var name: String
    var password: String
    var email: String
    var accountCreated: Date?
    var time: Int?
    var frequency: Int?
}
