//
//  CategoryViewModel.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 18.03.2023.
//

import Foundation

class CategoryViewModel: ObservableObject {
    @Published var categoryItems: [RecipeCategory] = []
    var dataSource: DataSource
    
    init() {
        self.dataSource = container.resolve(DataSource.self)!
        loadCategories()
    }
    
    private func loadCategories() {
        dataSource.loadCategories { categories in
            DispatchQueue.main.async {
                self.categoryItems = categories
            }
        }
    }


}
