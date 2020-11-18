//
//  TabBar.swift
//  HeroAndSwipeDownToCloseAnimations
//
//  Created by ramil on 18.11.2020.
//

import SwiftUI

struct TabBar: View {
    @Namespace var animation
    @StateObject var detailObject = DetailViewModel()
    
    var body: some View {
        ZStack {
            TabView {
                Today(animation: animation)
                    .environmentObject(detailObject)
                    .tabItem {
                        Image(systemName: "t.square")
                        Text("Today")
                    }
                Text("Games")
                    .tabItem {
                        Image(systemName: "g.square")
                        Text("Games")
                    }
                Text("Apps")
                    .tabItem {
                        Image(systemName: "t.square")
                        Text("Apps")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "s.square")
                        Text("Search")
                    }
            }
            .opacity(detailObject.show ? 0 : 1)
            
            if detailObject.show {
                Detail(detail: detailObject, animation: animation)
            }
        }
    }
}

