//
//  TabItemView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct TabItemView: View {
    @State var id:Int
    
    var body: some View {
        Text("Tab \(id)")
            .tabItem {
                Text(String(id))
            }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(id: 1)
    }
}
