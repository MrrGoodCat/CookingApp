//
//  CategoryViewModel.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 18.03.2023.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var categoryItems: [RecipeCategory] = []
    @Published var recipeItems: [Recipe] = []
    var dataSource: DataSource
    
    init() {
        self.dataSource = container.resolve(DataSource.self)!
        loadCategories()
        loadRecipes()
    }
    
    private func loadCategories() {
        dataSource.loadCategories { categories in
            DispatchQueue.main.async {
                self.categoryItems = categories
            }
        }
    }
    
    private func loadRecipes() {
        dataSource.loadRecipes { resipes in
            DispatchQueue.main.async {
                self.recipeItems = resipes
            }
        }
    }


}
