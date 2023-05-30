//
//  SkripsiApp.swift
//  Skripsi
//
//  Created by Aria Rifqi on 12/05/23.
//

import SwiftUI
import Firebase

@main
struct SkripsiApp: App {
    let persistenceController = PersistenceController.shared

    
    init()
    {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
