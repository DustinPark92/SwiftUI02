//
//  MywebView.swift
//  SwiftUI02
//
//  Created by Dustin on 2021/01/22.
//

import SwiftUI
import WebKit


// uikit의 uiview를 사용 할 수 있도록 한다.
struct MyWebview: UIViewRepresentable {

    
    
    var urlToLoad : String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        //unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        //웹뷰 인스턴스 생성
        let webview = WKWebView()
        //웹뷰를 로드 한다.
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    
    // 업데이트 ui view
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
    
}

struct MywebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
