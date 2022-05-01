//
//  ContentView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    
    
    //MARK: BODY

    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.horizontal , 15)
                    .padding(.bottom)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 0) {
                        FeaturedTabView()
                            .frame(height: 250, alignment: .center)
                            .padding(.vertical , 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        if #available(iOS 14.0, *) {
                            LazyVGrid(columns: gridItems, alignment: .center, spacing: rowSpacing, pinnedViews: []) {
                                ForEach(products) { item in
                                    ProductItemView(product: item)
                                }
                            }
                            .padding(15)
                        } else {
                            // Fallback on earlier versions
                            #warning("we shold handle for ios 13")
                        }
                        TitleView(title: "Brands")
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VStack
                }//: Scroll
            }//: VStack
            .background(colorBackground.edgesIgnoringSafeArea(.all))
        }//: ZStack
        .edgesIgnoringSafeArea(.top)
    }
}
//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
