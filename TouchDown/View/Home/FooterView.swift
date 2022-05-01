//
//  FooterView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
                .font(.system(size: 16, weight: .bold))
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            
            Text("Copyright © Robert Petras\nAll right reserved")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .font(.footnote.weight(.bold))
                .layoutPriority(1)

        }//: Vstack
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
