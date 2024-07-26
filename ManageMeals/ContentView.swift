//
//  ContentView.swift
//  ManageMeals
//
//  Created by Hilmar Palsson on 26/07/2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        WebView(urlString: "https://managemeals.com/categories")
            .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
