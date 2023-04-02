//
//  MockDataProvider.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 01.03.2023.
//

import Foundation

class MockDataProvider: DataSource {
    
    func loadCategories(completion: @escaping ([RecipeCategory]) -> Void) {
        guard let jsonString = Bundle.main.path(forResource: "RecipeCategory", ofType: "json").flatMap({ try? String(contentsOfFile: $0) }) else {
            print("Unable to read JSON string from file")
            completion([])
            return
        }

        guard let recipeCategories = DataService.shared.parseJson(jsonString: jsonString, type: [RecipeCategory].self) else {
            print("Unable to parse JSON string into a Recipe Category object")
            completion([])
            return
        }

        completion(recipeCategories)
    }


    
    func loadStepsFor(resipeId: Int) -> [RecipeStep] {
        return []
    }
    
    func loadCategoriesFor(resipeId: Int) -> [RecipeCategory] {
        return []
    }
    
    func loadIngredientsFor(resipeId: Int) -> [RecipeIngredient] {
        return []
    }

    
    func loadRecipes() -> [Recipe] {
        guard let jsonString = loadJson(from: "MockData\\Recipes") else {
            print("Unable to read JSON string from file")
            return []
        }
        
        guard let recipes = DataService.shared.parseJson(jsonString: jsonString, type: [Recipe].self) else {
            print("Unable to parse JSON string into a Recipe object")
            return []
        }
        
        return recipes
    }

    

    func loadJson(from file: String) -> String? {
        if let url = Bundle.main.url(forResource: file, withExtension: "json") {
            do {
                let jsonString = try String(contentsOf: url, encoding: .utf8)
                return jsonString
            } catch {
                print("Error reading JSON file: \(error)")
            }
        } else {
            print("File not found")
        }
        return nil
    }


}
