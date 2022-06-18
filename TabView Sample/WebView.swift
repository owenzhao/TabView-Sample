//
//  WebView.swift
//  Internet Helper
//
//  Created by zhaoxin on 2022/6/13.
//

import Foundation
import SwiftUI
import WebKit

struct WebView:NSViewRepresentable {
    @State var url:URL
    
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        nsView.load(request)
    }
}
