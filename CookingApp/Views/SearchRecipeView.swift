//
//  SearchRecipeView.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 21.02.2023.
//

import SwiftUI

struct SearchRecipeView: View {
    @State private var searchText = ""
    
    @ObservedObject var searchViewModel: SearchViewModel
    
    init() {
        searchViewModel = SearchViewModel()
    }
    var filteredRecipes: [Recipe] {
        searchViewModel.recipeItems.filter { recipe in
            searchText.isEmpty || recipe.name.localizedStandardContains(searchText)
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Search")
                    .font(.custom(CustomFont.loraBold.rawValue, size: FontSize.title1.rawValue))
                    .foregroundColor(CustomColor.foreground)
                Spacer()
            }.padding(.horizontal, 24)
                .padding(.top, 24)
            TextFieldWithIcon(text: $searchText, placeholder: "Search...", icon: .search, horisontalPadding: 24)
            if searchText == "" {
                SuggestedCategoriesGrid(categories: $searchViewModel.categoryItems)
                Spacer()
            } else {
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach (filteredRecipes) { resipe in
                            SearchListItem(imageUrl: resipe.imageUrl!, title: resipe.name, description: resipe.description)
                            Divider()
                        }
                    }.padding(.horizontal, 24)
                }
            }
        }
        .background(CustomColor.background)
    }

}


struct SearchRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRecipeView()
    }
}
