//
//  TabItemView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct TabItemView: View {
    @State var id:Int
    @State private var title = ""
    
    var body: some View {
        HStack {
            Text("Tab \(id)")
                .onAppear(perform: {
                    print("I am tab \(id)")
                })
                .onDisappear {
                    print("Tab \(id) am quit!")
            }
            
            TextField("Title", text: $title)
        }
        .tabItem {
            Text(getTabName())
        }
        .padding()
    }
    
    private func getTabName() -> String {
        if title.isEmpty {
            return String(id)
        }
        
        return title
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(id: 1)
    }
}
