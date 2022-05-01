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
                
                    
                Spacer()
                FooterView()
                    .padding()
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