//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            if #available(iOS 14.0, *) {
                LazyHGrid(rows: gridItems, alignment: .center, spacing: rowSpacing, pinnedViews: []) {
                    ForEach(brands) { item in
                        BrandItemView(brand: item)
                    }
                }//: Grid
                .frame( height: 200)
                .padding(15)
            } else {
                // Fallback on earlier versions
                #warning("should handled for ios 13")
            }
        }//: Scroll
    }
}
//MARK: PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
