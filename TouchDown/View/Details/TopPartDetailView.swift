//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: PROPERTIES
    
    @State private var isAnimating = false
    
    let product:Product
    //MARK: BODY
    var body: some View {
        HStack(spacing:4) {
            VStack(alignment:.leading) {
                Text("Price")
                    .font(.system(size: 18, weight: .semibold))
                Text(product.formattedPrice)
                    .font(.largeTitle.weight(.black))
                    .scaleEffect(1.35 , anchor: .leading)
            }//: VStack
            .offset(x: 0 , y: isAnimating ? -50 : -75 )
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(x: 0, y: isAnimating ? 0 : -35)
        }//: HStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
    }
}
//MARK: PREVIEW
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
