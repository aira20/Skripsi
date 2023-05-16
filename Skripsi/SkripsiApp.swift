//
//  SkripsiApp.swift
//  Skripsi
//
//  Created by Aria Rifqi on 12/05/23.
//

import SwiftUI

@main
struct SkripsiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
