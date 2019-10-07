//
//  PlayerRow.swift
//  Football
//
//  Created by MEI KU on 2019/10/5.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation

import SwiftUI

struct PlayerRow: View {
    var player: Player
    
 var body: some View {
 HStack {
    Image(player.name)
         .resizable()
         .scaledToFill()
         .frame(width: 80, height: 80)
         .clipShape(Circle())
         .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 6)
    VStack(alignment: .leading) {
        Text(player.name)
        Text(player.club)
        
        
        
 }
     Spacer()
 }
 }
}

