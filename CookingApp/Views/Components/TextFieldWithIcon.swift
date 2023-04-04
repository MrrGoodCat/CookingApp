//
//  TextFieldWithIcon.swift
//  CookingApp
//
//  Created by Олександр Вишневський on 26.02.2023.
//

import SwiftUI

struct TextFieldWithIcon: View {
    @Binding var text: String
    @FocusState private var isTextFieldFocused: Bool
    
    var placeholder: String
    var icon: Icon
    var horisontalPadding: CGFloat
    
    var body: some View {
        ZStack {
            CustomColor.componentBackground
                .cornerRadius(12)
            HStack {
                IconView(icon: icon, size: 24, color: isTextFieldFocused ? CustomColor.foreground : CustomColor.neutralAccent)
                TextField(self.placeholder, text: $text)
                    .font(.custom(CustomFont.latoRegular.rawValue, size: FontSize.body1.rawValue))
                    .focused($isTextFieldFocused)
                    
            }.padding(.horizontal, self.horisontalPadding)
        }.frame(width: UIScreen.main.bounds.width - (self.horisontalPadding * 2), height: 48)
    }
}


struct TextFieldWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithIcon(text: .constant(""), placeholder: "Search...", icon: .search, horisontalPadding: 24)
    }
}
