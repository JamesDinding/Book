//
//  NPCRow.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct NPCRow: View {
    var npcset: NPC
    var body: some View {
        HStack {
            Image(npcset.img)
                .resizable()
                .frame(width:60, height:60)
            .scaledToFill()
            .clipped()
            
            Text("                          \(npcset.name)")
            .bold()
            .padding()
            
        }
    }
}
