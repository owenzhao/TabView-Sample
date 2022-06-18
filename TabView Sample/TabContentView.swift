//
//  TabContentView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/18.
//

import SwiftUI

struct TabContentView: View {
    @State private var tabItems:[TabItem] = [
        TabItem(style: .main, title: "Main", url: URL(string: "https://parussoft.com")!),
        TabItem(style: .web, title: "Trello", url: URL(string: "https://trello.com")!),
        TabItem(style: .web, title: "Google", url: URL(string: "https://google.com")!)
    ]
    
    var body: some View {
        TabView {
            ForEach($tabItems) { $tabItem in
                if tabItem.style == .main {
                    TabItemView(tabItem: $tabItem)
                        .tabItem {
                            Text(tabItem.title)
                        }
                }
                
                if tabItem.style == .web {
                    WebView(url: tabItem.url)
                        .tabItem {
                            Text(tabItem.title)
                        }
                }
            }
        }
        .frame(minWidth: 800, minHeight: 600)
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
