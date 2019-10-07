//
//  Standing.swift
//  Football
//
//  Created by MEI KU on 2019/10/6.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation
import SwiftUI




struct Standing:View {
    
    let standings = [ "a", "b", "c","d", "e", "f","g","h"]
    
    var body: some View {
      
        List(0..<standings.count) { (index) in
        VStack {
            Image(self.standings[index])
                
        .resizable()
        .scaledToFit()
        .frame(height: 150)
                
         .clipped()
         // .padding
        .padding(.bottom, 10)
        }
           // .background(Color.blue)
        .cornerRadius(20)
        }
            .shadow(radius: 5)
        .onAppear {
        UITableView.appearance().separatorColor = .clear
                
            }
        }
    
}

