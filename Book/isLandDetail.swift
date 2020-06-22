//
//  isLandDetail.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct isLandDetail: View {
    var islandset: island
    var body: some View {
        VStack {
            Text(islandset.kind_island)
            .bold()
            .padding()
            
            Image(islandset.img)
            .resizable()
            .frame(width:400, height: 400)
            
            
            Text("出現機率: \(islandset.appear_possibility)")
            .bold()
            .padding()
        }
        .background(Image("BG").opacity(0.1))
    }
}
