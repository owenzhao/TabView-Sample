//
//  TabItemView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct TabItemView: View {
    @Binding var tabContent:TabContent
    
    var body: some View {
        HStack {
            Text("Tab \(tabContent.id)")
            
            TextField("Title", text: $tabContent.title)
                .frame(minWidth: 300)
        }
        .tabItem {
            Text(getTabName())
        }
        .padding()
    }
    
    private func getTabName() -> String {
        if tabContent.title.isEmpty {
            return String(tabContent.id)
        }
        
        return tabContent.title
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(tabContent: .constant(TabContent(id: 1, title: "")))
    }
}

struct TabContent:Identifiable, Equatable, Hashable {
    var id = 0
    var title = ""
}
