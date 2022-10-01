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
    /**
     SwiftUI view를 생성하면, 그것의 content, layout, behavior들은 view의 body property에 서술된다; 하지만 body property는 오직 하나의 view 만을 return 한다. 여러개의 view들을 합치거나(combine) 내장시키는(embed) 것이 가능하다.
     */
    var body: some View {
        /**
         기본적으로 stack은 그들의 content를 축에 대해 가운데 정렬을 하고, context-appropriate spacing을 준다.
         
         VStack initializer를 수정하여 view들을 leading edges로 정렬시켜보자.
         */
        VStack(alignment: .leading) {
            /**
             SwiftUI view를 customize 하기 위해서는 modifiers라는 method를 호출한다. Modifiers는 그것의 display를 바꾸거나 다른 property들을 바꾸기 위해 view를 감싼다. 각각의 modifier는 새로운 view를 반환하고, 그렇기 때문에 여러개의 modifier들을 chain하는 것이 일반적이다.
             */
            Text("Turtle Rock")
                .font(.title)
            /**
             HStack을 이용하여 나란히 view들을 쌓는다.
             */
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                /**
                 Layout보고 device의 full width를 사용하게 하기 위해 2개의 Text 사이에 Spacer를 추가하였다.
                 
                 Spacer는 그것을 포함하고 있는 view가 그것의 content에 의한 것이 아닌 parent view의 모든 space를 전부 사용하게 만들어준다.
                 */
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
