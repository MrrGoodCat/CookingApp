//
//  SearchRecipeView.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 21.02.2023.
//

import SwiftUI

struct SearchRecipeView: View {
    @State private var searchText = ""
//    @State var suggestedCategories: [Category]
    
    var body: some View {
        VStack {
            HStack {
                Text("Search")
                    .font(.largeTitle)
                    .foregroundColor(CustomColor.foreground)
                Spacer()
            }.padding(.horizontal, 24)
                .padding(.top, 24)
            TextFieldWithIcon(text: $searchText, placeholder: "Search...", icon: .search, horisontalPadding: 24)
            SuggestedCategoriesGrid()
            Spacer()
        }
        .background(CustomColor.background)
    }

}


struct SearchRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRecipeView()
    }
}
