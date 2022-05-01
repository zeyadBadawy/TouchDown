//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: PROPERTIES
    let category:Category
    //MARK: BODY
    var body: some View {
        Button {
            print("item action")
        } label: {
            HStack (alignment:.center , spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name)
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.gray)
                Spacer()
            }//: HStack
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }//: Button
    }
}
//MARK: PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
