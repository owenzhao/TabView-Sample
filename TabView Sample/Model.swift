//
//  Model.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/18.
//

import Foundation

struct TabItem:Identifiable, Hashable {
    enum Style {
        case main
        case web
    }
    
    var id = UUID()
    var style:Style
    var title:String
    var url:URL
}

