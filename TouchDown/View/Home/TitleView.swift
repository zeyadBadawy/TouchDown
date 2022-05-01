//
//  TitleView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct TitleView: View {
    //MARK: PROPERTIES
    var title:String
    //MARK: BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle.weight(.heavy))
            
            Spacer()
        }//: HStack
        .padding(.horizontal)
        .padding(.top , 15)
        .padding(.bottom , 10)
             
    }
}
//MARK: PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
