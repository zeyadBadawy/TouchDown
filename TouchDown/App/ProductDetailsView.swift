//
//  ProductDetailsView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct ProductDetailsView: View {
    //MARK: PROPERTIES
    let product:Product
    @EnvironmentObject var shop:Shop
    
    //MARK: BODY
    var body: some View {
        VStack(alignment:.leading) {
            //NAVIGATION
            NavigationBarDetailView()
                .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.horizontal)
            
            //HEADER
            HeaderDetailView(product: product)
                .padding(.horizontal)
            
            //TOP PART
            TopPartDetailView(product: product)
                .padding(.horizontal)
                .zIndex(1)
            
            //DETAIL PART
            VStack {
                RatingsSizesDetailView()
                    .padding(.top , -20)
                    .padding(.bottom , 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(product.description)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                        .font(.system(.body, design: .rounded))
                }//: Scroll
                
                QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                
                AddToCartDetailView(product: product)
                    .padding(.bottom,20)
                
                Spacer()
            }//: VStack
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top , -105))
            .zIndex(0)
            
            
        }//:VStack
        .background(Color(red: product.red, green: product.green, blue: product.blue))
        .edgesIgnoringSafeArea(.all)
    }
}
//MARK: PREVIEW
struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: sampleProduct)
    }
}
