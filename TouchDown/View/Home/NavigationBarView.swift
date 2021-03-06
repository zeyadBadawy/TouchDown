//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: PROPERTIES
    @State private var isAnimation:Bool = false
    //MARK: BODY
    var body: some View {
        HStack {
            Button {
                print("search")
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//: Search Button
            
            Spacer()
            LogoView()
                .opacity(isAnimation ? 1 : 0 )
                .offset(x: 0, y: isAnimation ? 0 : 25)
                .onAppear {
                    withAnimation(.easeOut) {
                        isAnimation.toggle()
                    }
                }
            Spacer()
            
            Button {
                print("cart button")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill()
                        .foregroundColor(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }//: ZStack
            }


        }//: HStack
    }
}
//MARK: PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
