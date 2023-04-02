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
}
