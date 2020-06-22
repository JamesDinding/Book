//
//  ContentView.swift
//  Book
//
//  Created by User02 on 2020/6/22.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            NPCView()
                .tag(0)
                .tabItem {
                    Image("icon-leaf-tabbar")
                    Text("NPC")
            }
            islandView()
                .tag(1)
                .tabItem {
                    Image("icon-cardboard-tabbar")
                        .resizable()
                    Text("外出島嶼")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
