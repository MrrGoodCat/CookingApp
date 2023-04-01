//
//  HomeView.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 21.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    //@State var dataSource: DataSource
    var body: some View {
        VStack{
            if(selectedTab == 1) {
                SearchRecipeView()
            }
            Spacer()
                
            TabBarView(selectedIndex: $selectedTab)
        }.background(CustomColor.background)
            
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
