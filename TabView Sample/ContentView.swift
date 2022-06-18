//
//  ContentView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct ContentView: View {
    @State private var tabItems:[TabItem] = [
        TabItem(style: .main, title: "Main", url: URL(string: "https://parussoft.com")!),
        TabItem(style: .web, title: "Trello", url: URL(string: "https://trello.com")!),
        TabItem(style: .web, title: "Google", url: URL(string: "https://google.com")!)
    ]
    
    @State private var currentTabItem = TabItem(style: .main, title: "Main", url: URL(string: "https://parussoft.com")!)
    
    var body: some View {
        ForEach($tabItems) { $tabItem in
            if currentTabItem.style == tabItem.style && currentTabItem.style == .main {
                TabItemView(tabItem: $tabItem)
            }
            
            if currentTabItem.style == .web && currentTabItem.url == tabItem.url {
                WebView(url: tabItem.url)
            }
        }
        .toolbar {
            HStack {
                Picker(String(currentTabItem.title), selection: $currentTabItem) {
                    ForEach(tabItems) { tabItem in
                        Text(tabItem.title).tag(tabItem)
                    }
                }
                .pickerStyle(.segmented)
                
                Spacer()
            }
        }
        .frame(minWidth: 800, minHeight: 600)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

