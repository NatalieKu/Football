//
//  FCDetail.swift
//  Football
//
//  Created by MEI KU on 2019/10/4.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation
import SwiftUI

struct FCDetail: View{
    var fc: FC
    
    var body: some View{
    //NavigationView {
        VStack{
          // Spacer()
           
            Image(fc.name)
                .resizable()
                .scaledToFit()
              .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 200)
                
               .clipped()
            
            Text(fc.intro)
        .frame(minWidth: 0,maxWidth: .infinity, maxHeight: 300)
            .clipped()
                //Spacer()
            
            Text("POINTS:\(fc.point)")
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.system(size: 20))
                .cornerRadius(5)
            Spacer()
            
    
            NavigationLink(destination: PlayerList()){
                Text("PLAYERS")
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .cornerRadius(5)
                    Spacer()
            }
            
           
            
           
            //NavigationLink(destination: Standing() ){
        
         
        }
            .navigationBarTitle(fc.name)
    
    }
      
    }


