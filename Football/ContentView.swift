//
//  ContentView.swift
//  Football
//
//  Created by MEI KU on 2019/9/30.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import SwiftUI

struct Appview :View{

    var body: some View {
    
        TabView{
            Main()
               .tabItem{
                Image(systemName: "house")
                Text("Main")
            }
            
            FCList()
                .tabItem{
                    Image(systemName: "book.fill")
                    Text("FCList")
            }
            
             MatchesView()
                        .tabItem{
                        Image(systemName: "rosette")
                        Text("Matches")
                        }
            
 
            PlayerList()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                    Text("Players")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "camera.viewfinder")
                    Text("IG")
            }
            }
        }
}
