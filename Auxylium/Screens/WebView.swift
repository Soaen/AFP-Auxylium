//
//  WebView.swift
//  Auxylium
//
//  Created by Apprenant 70 on 13/12/2021.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let urlString: String

    func makeUIView(context: Context) -> WKWebView {

        let webView = WKWebView()

//        if let url = URL(string: "https://www.thelittleprince.com") {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
           
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }

    typealias UIViewType = WKWebView
    
    
}

/*
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
    }
}
*/
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        //        WebView()
        WebView(urlString: "https://ns328843.ovh.net")
            .previewLayout(.device)
            .previewDevice("iPhone 12")
    }
}
