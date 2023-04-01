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
    var container = Container()
    lazy var dataSource: DataSource = {
        registerDependencies()
        return container.resolve(DataSource.self)!
    }()
    
    init() {
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
    
    private func registerDependencies() {
        container.register(DataSource.self) { _ in MockDataProvider() }
    }
}





