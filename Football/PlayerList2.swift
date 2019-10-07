//
//  PlayerList2.swift
//  Football
//
//  Created by MEI KU on 2019/10/5.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation
import SwiftUI





struct ContentView: View {
    let names = [["0", "1","2"],["3","4","5"],["6","7","8"],["9","10","11"],["12","13","14"],["15","16","17"],["18","19","20"],["21","22","23"],["24","25","26"],["27","28","29"],["30","31","32"],["33","34","35"],["36","37","38"]]
    let igs = ["play","stegen","who?","Ziyech","Goal!!!!","Brazi","Today's best","Cup","Pic","U20"]
    
 var columnCount = 3
 let photoWidth = (UIScreen.main.bounds.size.width - 10) / 3
    
    var body: some View {
       
        NavigationView {
    
 List {
 
    VStack{
        Image("IG")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0,maxWidth: .infinity, maxHeight: 346)
            .clipped()
        
        Image("IG2")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0,maxWidth: .infinity, maxHeight: 30)
            .clipped()
    }
    ScrollView(.horizontal) {
        
        HStack (spacing:30){
            ForEach(0..<10) { (index) in
                VStack{
            Image("IGS\(index)")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 70, height: 70)
                 .clipShape(Circle())
                 .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 0.001)
                    Text(self.igs[index])
                        .font(.system(size: 14))
            }
        }
        .frame(height: 150)
       
    }
    }
    ForEach(0..<names.count) { (row) in
    HStack(spacing: 5) {
 ForEach(0..<self.names[row].count) { (column) in
    VStack(alignment: .leading){
    Image(self.names[row][column])
       .resizable()
       .scaledToFill()
       .frame(width: self.photoWidth, height: self.photoWidth)
       .clipped()
     
    }

    }
  
 }

 }
.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
.onAppear {UITableView.appearance().separatorColor = .clear
 }
 }

}
}

}

