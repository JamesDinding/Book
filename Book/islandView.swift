//
//  islandView.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct islandView: View {
    let islandset = [island(kind_island: "素材島2", appear_possibility: "9%", img: "mapthumb1"),
                     island(kind_island: "素材島1", appear_possibility: "9%", img: "mapthumb0"),
                     island(kind_island: "漩渦島", appear_possibility: "9%", img: "mapthumb2"),
                     island(kind_island: "素材島3", appear_possibility: "9%", img: "mapthumb24"),
                     island(kind_island: "山島", appear_possibility: "9%", img: "mapthumb4"),
                     island(kind_island: "金錢島1號", appear_possibility: "5%", img: "mapthumb7"),
                     island(kind_island: "竹島", appear_possibility: "10%", img: "mapthumb8"),
                     island(kind_island: "水果島", appear_possibility: "9%", img: "mapthumb10"),
                     island(kind_island: "稀有花島", appear_possibility: "2%", img: "mapthumb11"),
                     island(kind_island: "金錢島2號", appear_possibility: "2%", img: "mapthumb12"),
                     island(kind_island: "狼蛛島", appear_possibility: "2%", img: "mapthumb13"),
                     island(kind_island: "樹島", appear_possibility: "2%", img: "mapthumb14"),
                     island(kind_island: "大魚島1號", appear_possibility: "1%", img: "mapthumb16"),
                     island(kind_island: "硬木島", appear_possibility: "1%", img: "mapthumb17"),
                     island(kind_island: "蜻蜓島", appear_possibility: "5%", img: "mapthumb18"),
                     island(kind_island: "大魚島2號", appear_possibility: "2%", img: "mapthumb19"),
                     island(kind_island: "垃圾島", appear_possibility: "5%", img: "mapthumb20"),
                     island(kind_island: "鯊魚島", appear_possibility: "1%", img: "mapthumb21"),
                     island(kind_island: "瀑布島", appear_possibility: "5%", img: "mapthumb23")
    ]
    
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            NavigationView {
                List(islandset.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: isLandDetail(islandset:
                self.islandset[index])) {
                 isLandRow(islandset: self.islandset[index])
                 }
                 })
            }
        }
    }
}
