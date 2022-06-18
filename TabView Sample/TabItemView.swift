//
//  TabItemView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct TabItemView: View {
//    @Binding var tabContent:TabContent
    @Binding var tabItem:TabItem
    
    var body: some View {
        HStack {
            TextField("Title", text: $tabItem.title)
                .frame(minWidth: 300)
        }
        .tabItem {
            Text(tabItem.title)
        }
        .padding()
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(tabItem: .constant(TabItem(style: .main, title: "Main", url: URL(string: "https://parussoft.com")!)))
    }
}
