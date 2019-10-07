
//  Matches.swift
//  Football
//
//  Created by MEI KU on 2019/10/6.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation
import SwiftUI

struct MatchesView:View {
    
    
    @State private var selectedIndex = 0

    let matches = ["Group A", "Group B", "Group C","Group D", "Group E", "Group F", "Gruop G", "Group H"]
    
    let images = [ "A", "B", "C","D", "E", "F","G", "H"]
    
  
    var body: some View {
        
        VStack{
   Picker(selection: $selectedIndex, label: Text("Matches")) {
            ForEach(0..<images.count) { (index) in
               HStack {
                  Text(self.matches[index])
                     .foregroundColor(.blue)
                
                }
              
            }
         }
        
                Image(self.images[selectedIndex])
                  
    }
    }
}

/*
   

   
  
List(0..<matches.count) { (index) in
VStack {
    Image(self.matches[index])
        
.resizable()
.scaledToFit()
.frame(height: 600)
    .clipped()
    .padding()
    Text("Group stage. Matchday\(self.matches[index])")
.padding(.bottom, 10)
}
    .background(Color.yellow)
.cornerRadius(20)
}
    .shadow(radius: 5)
.onAppear {
UITableView.appearance().separatorColor = .clear
        
    }
}
 
 */

