//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: PROPERTIES

    //MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            if #available(iOS 14.0, *) {
                LazyHGrid(rows: gridItems, alignment: .center, spacing: coulmnsSpacing , pinnedViews: []) {
                    Section(header:SectionView(rotateClockWise: false) ,
                            footer:SectionView(rotateClockWise: true)) {
                        ForEach(categories) { item in
                            CategoryItemView(category: item)
                        }
                    }
                }
                .frame( height: 140 )
                .padding(.horizontal , 15)
                .padding(.vertical , 10)
            } else {
                #warning("will handle this later")
            }//: GRID
        }//: Scroll
    }
}
//MARK: PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
