//
//  NPCDetail.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct NPCDetail: View {
    var npcset: NPC
    @State private var spindegree: Double = 0
    var body: some View {
        VStack {
            Text(npcset.name)
            .bold()
            .padding()
            
            Image(npcset.img)
            .resizable()
            .frame(width:400, height: 400)
                .rotationEffect(.degrees(spindegree))
                .animation(Animation.linear(duration: 2)
                    .delay(3)
                    .repeatForever(autoreverses: false))
                .onAppear{
                    self.spindegree = 1080
            }
            
            
            Text("作用: \(npcset.job)")
            .bold()
            .padding()
            
            Text("出現時間: \(npcset.appear_time)")
            .bold()
            .padding()
                
        }
        .background(Image("BG").opacity(0.1))
    }
}
