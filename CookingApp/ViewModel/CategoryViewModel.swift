//
//  CategoryViewModel.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 18.03.2023.
//

import Foundation

class CategoryViewModel: ObservableObject {
    @Published var categoryItems: [RecipeCategory] = []
    
    init(dataSource: DataSource) {
        getCategoryItems()
    }
    
    func getCategoryItems() {
        let items = [
            RecipeCategory(id: 0, name: "Sushi", description: "Some description for sushi", imageUrl: "https://www.pngplay.com/wp-content/uploads/8/Sushi-Transparent-PNG.png"),
            RecipeCategory(id: 1, name: "Beef Steak", description: "Some description for Beef Steak", imageUrl:"https://image.pngaaa.com/287/545287-middle.png"),
            RecipeCategory(id: 2, name: "Pasta", description: "Some description for Pasta", imageUrl: "https://w7.pngwing.com/pngs/131/686/png-transparent-pasta-marinara-sauce-italian-cuisine-bolognese-sauce-spaghetti-menu-food-recipe-cuisine.png"),
            RecipeCategory(id: 3, name: "Salad", description: "Some description for Salad", imageUrl: "https://www.pngfind.com/pngs/m/265-2652525_grilled-chicken-salad-hd-png-download.png"),
            RecipeCategory(id: 4, name: "Dessert", description: "Some description for Dessert", imageUrl: "https://e7.pngegg.com/pngimages/879/358/png-clipart-panna-cotta-italian-cuisine-dessert-cream-creme-caramel-dessert-frutti-di-bosco-food.png"),
            RecipeCategory(id: 5, name: "Noodles", description: "Some description for Noodles", imageUrl: "https://e7.pngegg.com/pngimages/110/748/png-clipart-noodle-noodle.png"),
            RecipeCategory(id: 6, name: "Soup", description: "Some description for Soup", imageUrl: "https://e7.pngegg.com/pngimages/47/72/png-clipart-congee-corn-soup-hot-and-sour-soup-manchow-soup-mixed-vegetable-soup-vegetable-soup-food.png"),
            RecipeCategory(id: 7, name: "Toast", description: "Some description for Toast", imageUrl: "https://e7.pngegg.com/pngimages/104/620/png-clipart-bruschetta-toast-recipe-antipasto-toast-baked-goods-food-thumbnail.png")
        ]
        categoryItems.append(contentsOf: items)
    }
}
