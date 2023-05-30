//
//  User.swift
//  Skripsi
//
//  Created by Mac-albert on 30/05/23.
//

import Foundation
import FirebaseFirestoreSwift

struct User: Codable{
    @DocumentID var id: String!
    var name: String
    var time: Int?
    var frequency: Int?
}
