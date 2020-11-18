//
//  TodayItem.swift
//  HeroAndSwipeDownToCloseAnimations
//
//  Created by ramil on 18.11.2020.
//

import Foundation

struct TodayItem: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var category: String
    var overlay: String
    var contentImage: String
}

var item = [
    TodayItem(id: "Forza Street", title: "Ultimate Street Racing Game", category: "GAME OF THE DAY", overlay: "b1", contentImage: "l1"),
    TodayItem(id: "Roblox", title: "Adventure", category: "Li Nas X Perform In Roblox", overlay: "b2", contentImage: "l2")
]
