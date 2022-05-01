//
//  PlayerItemView.swift
//  TouchDown
//
//  Created by Zeyad Badawy on 01/05/2022.
//

import SwiftUI

struct PlayerItemView: View {
    //MARK: PROPERTIES
    var player:Player
    //MARK: BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
//MARK: PREVIEW
struct PlayerItemView_Previews: PreviewProvider {
    static var previews: some View {
        let players:[Player] = Bundle.main.decode("player.json")
        PlayerItemView(player: players.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
