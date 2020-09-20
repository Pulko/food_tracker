//
//  Food_TrackerApp.swift
//  Food Tracker
//
//  Created by Фёдор Ткаченко on 20.09.20.
//

import SwiftUI

@main
struct Food_TrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
