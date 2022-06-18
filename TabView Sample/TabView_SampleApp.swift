//
//  TabView_SampleApp.swift
//  TabView Sample
//
//  Created by zhaoxin on 2022/6/15.
//

import SwiftUI

@main
struct TabView_SampleApp: App {
    @State private var loadingType:LoadingType = .toolbar
    
    var body: some Scene {
        WindowGroup {
            switch loadingType {
            case .tabView:
                TabContentView()
            case .toolbar:
                ContentView()
            }
        }
        .windowToolbarStyle(.unifiedCompact(showsTitle: false))
    }
}

enum LoadingType {
    case tabView
    case toolbar
}
