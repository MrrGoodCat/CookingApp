//
//  CookingAppApp.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 21.02.2023.
//

import SwiftUI
import Swinject

@main
struct CookingAppApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        registerDependencies()
        // Lora Bold
        FileManager.registerFont(withFileName: "Lora-Bold.ttf")
        // Lato Regular
        FileManager.registerFont(withFileName: "Lato-Regular.ttf")
        // Lato Bold
        FileManager.registerFont(withFileName: "Lato-Bold.ttf")
        // Lato Black
        FileManager.registerFont(withFileName: "Lato-Black.ttf")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
    private func registerDependencies() {
        container.register(DataSource.self) { _ in MockDataProvider() }
    }
}





