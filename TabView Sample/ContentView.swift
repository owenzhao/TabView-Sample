//
//  ContentView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct ContentView: View {
    @State private var tabContents:[TabContent] = {
        (1..<4).map { TabContent(id: $0) }
    }()
    
    @State private var currentTabContent = TabContent(id: 1)
    
    var body: some View {
        ForEach($tabContents) { $tabContent in
            if currentTabContent.id == tabContent.id {
                TabItemView(tabContent: $tabContent)
            }
        }
        .toolbar {
            HStack {
                Picker(String(currentTabContent.title), selection: $currentTabContent) {
                    ForEach(tabContents) { tabContent in
                        Text(tabContent.title.isEmpty ? String(tabContent.id) : tabContent.title).tag(tabContent)
                    }
                }
                .pickerStyle(.segmented)
                .onChange(of: currentTabContent) { newValue in
                    if let index = tabContents.map({$0.id}).firstIndex(of: newValue.id) {
                        tabContents[index] = newValue
                    }
                }
                
                Spacer()
            }
        }
        .frame(width: 400, height: 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
