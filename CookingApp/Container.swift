//
//  Container.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 29.03.2023.
//

import Swinject

let container = Container()

func registerDependencies() {
    container.register(DataSource.self) { _ in MockDataProvider() }
    
//#if DEBUG
//    container.register(DataSource.self) { _ in MockDataProvider() }
//    #else
//    // register production data provider
//    #endif
    
    
//    if let dataSource = ProcessInfo.processInfo.environment["DATA_SOURCE"], dataSource == "MockDataProvider" {
//            container.register(DataSource.self) { _ in MockDataProvider() }
//        } else {
//            // register production data provider
//        }
}
