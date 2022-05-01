//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: PROPERTIES
    let brand:Brand
    //MARK: BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .background(Color.white.cornerRadius(12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
    }
}
//MARK: PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
