//
//  SectionView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct SectionView: View {
    //MARK: PROPERTIES
    @State var rotateClockWise = false
    //MARK: BODY
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote.weight(.bold))
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90 ))
            
            Spacer()
        }//:VStack
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
