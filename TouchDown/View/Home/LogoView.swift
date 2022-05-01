//
//  LogoView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("TOUCH")
                .font(.title.weight(.black))
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("DOWN")
                .font(.title.weight(.black))
                .foregroundColor(.black)
            
        }//: HStack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
