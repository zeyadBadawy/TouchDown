//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: PROPERTIES
    let product:Product
    
    //MARK: BODY
    var body: some View {
        VStack(alignment:.leading , spacing: 4) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title.weight(.black))
                .lineLimit(1)
            Text(product.formattedPrice)
                .font(.body.weight(.semibold))
                .foregroundColor(.gray)
        }//: VStack
    }
}
//MARK: PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
