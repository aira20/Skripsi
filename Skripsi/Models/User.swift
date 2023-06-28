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
    var name: String?
    var email: String?
//    password seharusnya ga dimasukin ke firestore, tapi kalo mau ya terserah wkwk
    var password: String?
    var time: Int?
    var frequency: Int?
}
