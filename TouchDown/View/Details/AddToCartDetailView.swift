//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 02/05/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
  // MARK: - PROPERTY
    let product:Product
  // MARK: - BODY
  
  var body: some View {
    Button(action: {
    }, label: {
      Spacer()
      Text("Add to cart".uppercased())
        .font(.system(.title, design: .rounded))
        .fontWeight(.bold)
        .foregroundColor(.white)
      Spacer()
    }) //: BUTTON
    .padding(15)
    .background(
      Color(
        red: product.red,
        green: product.green,
        blue: product.blue
      )
    )
    .clipShape(Capsule())
  }
}

// MARK: - PREVIEW

struct AddToCartDetailView_Previews: PreviewProvider {
  static var previews: some View {
      AddToCartDetailView(product: products.first!)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
