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
         VStack을 하나 추가하고 custom MapView를 VStack의 제일 상단에 추가한다.
         */
        VStack {
            MapView()
            /**
             Map content를 스크린의 top edge까지 확장시키기 위해서 ignoresSafeArea(edge: .top) modifier를 추가한다.
             */
                .ignoresSafeArea(edges: .top)
            /**
             MapView의 크기를 frame(width:height:)를 사용하여 설정한다.
             height parameter만 설정하면 view는 자동으로 content의 width로 크기를 설정한다. 이번 경우에는 MapView는 가능한 공간을 모두 채운다.
             */
                .frame(height: 300)
            
            /**
             CircleImage view를 stack에 추가한다.
             */
            CircleImage()
            /**
             Image를 map view의 위에 올리기 위해서 offset을 수직으로 -130을 주고, padding을 -130을 줬다.
             */
                .offset(y: -130)
                .padding(.bottom, -130)
            
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
                /**
                 Layout보고 device의 full width를 사용하게 하기 위해 2개의 Text 사이에 Spacer를 추가하였다.
                 
                 Spacer는 그것을 포함하고 있는 view가 그것의 content에 의한 것이 아닌 parent view의 모든 space를 전부 사용하게 만들어준다.
                 */
                Spacer()
                Text("California")
            }
            /**
             subheadline font modifier를 각각의 Text view에서 그들을 포함하고 있는 HStack으로 이동시킨다. 그리고 그들에게 secondary color를 적용한다.
             
             Modifier를 stack같은 layout view에 적용하면, SwiftUI는 포함하는 모든 요소에 modifier를 적용한다.
             */
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here")
        }
        .padding()
            /**
             제일 바깥 VStack의 아래에 Spacer를 추가해주어서 content를 스크린의 상단으로 민다.
             */
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
