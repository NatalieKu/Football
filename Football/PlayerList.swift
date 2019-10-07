//
//  PlayerList.swift
//  Football
//
//  Created by MEI KU on 2019/10/5.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation
import SwiftUI

struct PlayerList: View {

 var body: some View {
            
       // NavigationView{
            List{
                
                Section(header: Text("Forward")) {
                    ForEach(0..<fwplayers.count) {(index) in
                       PlayerRow(player: fwplayers[index])
 
                    }
                }

                    Section(header: Text("Midfielder")) {
                    ForEach(0..<mfplayers.count){(index) in
                        
                        PlayerRow(player: mfplayers[index])
                            
                }
                }
    
                Section(header: Text("Defender")) {
                ForEach(0..<dfplayers.count){(index) in
                
                PlayerRow(player: dfplayers[index])
        
            }
                }
            Section(header: Text("Goalkeeper")) {
               ForEach(0..<gkplayers.count){(index) in
                PlayerRow(player: gkplayers[index])
        }
               
    }
            .navigationBarTitle("Players")

            }
   
         
}
}
