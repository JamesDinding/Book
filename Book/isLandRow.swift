//
//  isLandRow.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct isLandRow: View {
    var islandset: island
    var body: some View {
        HStack {
            Image(islandset.img)
                .resizable()
                .frame(width:60, height:60)
            .scaledToFill()
            .clipped()
            
            Text("                          \(islandset.kind_island)")
            .bold()
            .padding()
            
        }
    }
}
