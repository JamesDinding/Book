//
//  NPCView.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation

struct NPCView: View {
    let npcset = [NPC(name:"俞司廷", job:"以原價1.5倍價錢出售魚類，製作魚類模型", appear_time:"到隔日５點", img:"cj"),
                  NPC(name:"龍克斯", job:"以原價1.5倍價錢出售蟲類，製作蟲類模型", appear_time:"到隔日５點", img:"flick"),
                  NPC(name:"駱嵐", job:"購買特殊地毯、不可思議壁紙、不可思議地板", appear_time:"到隔日５點", img:"saharah"),
                  NPC(name:"曹賣", job:"購買大頭菜", appear_time:"每週日05：00 ～ 12：00", img:"daisy"),
                  NPC(name:"薛革", job:"購買鞋子、襪子、包包", appear_time:"每星期會出現一次，05：00 ～22：00", img:"kicks"),
                  NPC(name:"幽幽", job:"獲得及回報任務", appear_time:"晚上", img:"wisp"),
                  NPC(name:"博珂", job:"領取星星碎片專用DIY方程式", appear_time:"晚上ㄎ", img:"celeste"),
                  NPC(name:"呂游", job:"獲得及回報任務", appear_time:"隨機", img:"gulliver"),
                  NPC(name:"K.K.", job:"提供歌曲、可獲得島嶼地形改造技能", appear_time:"每週六20：00 ～00：00", img:"kk")
    ]
    
    
    
    
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            NavigationView {
                List(npcset.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: NPCDetail(npcset:
                self.npcset[index])) {
                 NPCRow(npcset: self.npcset[index])
                 }
                 })
            }
        }
    }
}
