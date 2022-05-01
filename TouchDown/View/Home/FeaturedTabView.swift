//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
        if #available(iOS 14.0, *) {
            TabView {
                ForEach(players) { item in
                    PlayerItemView(player: item)
                        .padding(.top , 10)
                        .padding(.horizontal , 15)
                }
            }//: TabView
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
        } else {
            PageView(players.map { PlayerItemView(player: $0) }).frame(height: 250)
        }
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
