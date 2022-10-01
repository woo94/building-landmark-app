//
//  ContentView.swift
//  building-landmark-app
//
//  Created by woo94 on 2022/10/02.
//

import SwiftUI

/**
 기본적으로 SwiftUI view는 2개의 structure를 선언한다.
 첫번째 structure는 View protocol을 따르고 view의 content와 layout을 나타낸다.
 두번째 structure는 그 view에 대한 preview를 선언한다.
 */
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
