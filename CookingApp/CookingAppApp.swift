//
//  CookingAppApp.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 21.02.2023.
//

import SwiftUI

@main
struct CookingAppApp: App {
    let persistenceController = PersistenceController.shared
    //@StateObject var categoryListView: CategoryViewModel = CategoryViewModel()
    var dataSource: DataSource = MockDataProvider()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(dataSource: dataSource)
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    //.environmentObject(categoryListView)
            }
        }
    }
    
    func registerDependencies() {
        container.register(DataSource.self) { _ in MockDataProvider() }
    }

}
