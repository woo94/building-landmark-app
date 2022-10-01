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
            /**
             SwiftUI view를 customize 하기 위해서는 modifiers라는 method를 호출한다. Modifiers는 그것의 display를 바꾸거나 다른 property들을 바꾸기 위해 view를 감싼다. 각각의 modifier는 새로운 view를 반환하고, 그렇기 때문에 여러개의 modifier들을 chain하는 것이 일반적이다.
             */
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.green)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
