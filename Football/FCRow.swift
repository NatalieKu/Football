//
//  FCRow.swift
//  Football
//
//  Created by MEI KU on 2019/10/4.
//  Copyright © 2019 Natalie KU. All rights reserved.
//

import Foundation
import SwiftUI

struct FCRow: View {
    var fc: FC
 var body: some View {
 HStack {
    Image(fc.name)
         .resizable()
         .scaledToFit()
         .frame(width: 80, height:80)
         .clipped()
         VStack(alignment: .leading) {
         Text(fc.name)
         Text("Group \(fc.gruop)")
 }
     Spacer()
 }
 }
}

