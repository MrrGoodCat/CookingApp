//
//  TabBarView.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 24.02.2023.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedIndex: Int
    
    let items = [
        TabBarItem(selectedIndex: 0, icon: .home, text: "Home"),
        TabBarItem(selectedIndex: 1, icon: .search, text: "Search"),
        TabBarItem(selectedIndex: 2, icon: .list, text: "List"),
        TabBarItem(selectedIndex: 3, icon: .profile, text: "Profile")
    ]
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                HStack {
                    ForEach(items) { item in
                        showTabBarMenuButton(item: item)
                    }
                    Spacer(minLength: 55)
                }
                .padding(30)
                .background(CustomColor.background)
                .frame(width: 327, height: 56)
                .cornerRadius(16)
                
                addButton()
                
            }
        }.frame(width: UIScreen.main.bounds.width)
            .shadow(radius: 10)
        Spacer()
    }
    
    fileprivate func showTabBarMenuButton(item: TabBarItem) -> some View {
        Button(action: {
            self.selectedIndex = item.selectedIndex
        }) {
            if (self.selectedIndex == item.selectedIndex) {
                VStack {
                    Spacer()
                    Text(item.text)
                        .foregroundColor(CustomColor.primaryAccent)
                    Image(systemName:"rectangle.fill")
                        .scaleEffect(0.3)
                        .foregroundColor(CustomColor.primaryAccent)
                }
            } else {
                IconView(icon: item.icon, size: 24, color: CustomColor.neutralAccent)
            }
        }
        .frame(width: 54)
    }
    
    fileprivate func addButton() -> some View {
        Button(action: {
            //TODO: add action for button
        }) {
            IconView(icon: .plus, size: 24, color: CustomColor.semanticWhite)
                .padding(13)
        }
        .background(CustomColor.primaryAccent)
        .cornerRadius(16)
        .offset(x: 120,y: -14)
        .shadow(radius: 5)
    }
}

struct TabBarItem: Identifiable {
    let id = UUID()
    let selectedIndex: Int
    let icon: Icon
    let text: String
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedIndex: .constant(0))
    }
}
