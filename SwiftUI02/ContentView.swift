//
//  ContentView.swift
//  SwiftUI02
//
//  Created by Dustin on 2021/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.naver.com").edgesIgnoringSafeArea(.all)
                    ,
                    label: {
                        Text("네이버")
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.daum.net").edgesIgnoringSafeArea(.all),
                    label: {
                        Text("다음")
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.google.com").edgesIgnoringSafeArea(.all),
                    label: {
                        Text("구글")
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
                
                
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
