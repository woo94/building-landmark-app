//
//  CircleImage.swift
//  building-landmark-app
//
//  Created by woo94 on 2022/10/02.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        /**
         Image(_: ) initializer를 사용해서 보여줄 image의 이름을 넘겨준다.
         */
        Image("turtlerock")
        /**
         clipShape(Circle())로 image의 shape를 원형으로 깎는다.
         */
            .clipShape(Circle())
        /**
         다른 circle 하나를 gray stroke로 그려서 overlay로 추가하여 image의 border를 준다.
         
         마지막에 border color를 white로 바꾸어준다.
         */
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
        /**
         7 point radius로 그림자를 추가한다.
         */
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
