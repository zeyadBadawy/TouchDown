//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop:Shop

    //MARK: BODY
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedBack.impactOccurred()
                    shop.selectedProduct = nil
                    shop.shouldShowProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }//: back Button
            Spacer()
            Button {
                print("cart button")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.white)
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
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
