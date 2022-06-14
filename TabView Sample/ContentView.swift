//
//  ContentView.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ForEach(1..<4) { id in
                TabItemView(id: id)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
