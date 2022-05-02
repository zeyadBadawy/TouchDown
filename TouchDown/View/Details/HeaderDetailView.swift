//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: PROPERTIES
    let product:Product
    //MARK: BODY
    var body: some View {
        VStack(alignment:.leading) {
            Text("Protective Gear")
            Text(product.name)
                .font(.largeTitle.weight(.black))
        }
        .foregroundColor(.white)
    }
}
//MARK: PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
