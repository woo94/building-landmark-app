//
//  MapView.swift
//  building-landmark-app
//
//  Created by woo94 on 2022/10/02.
//

import SwiftUI
/**
 SwiftUI와 특정한 다른 framework를 같은 파일에 import 하면, 그 framework에 의해 제공되는 SwiftUI-specific functionality에 대한 접근이 가능하다.
 */
import MapKit

struct MapView: View {
    /**
     @State attribute를 사용하여 data에 대한 source of truth를 만들 수 있다. 이 data는 하나 이상의 view에서 수정이 가능하다.
     */
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        /**
         State variable을 $ prefixing 하면, binding을 건낸다는 것이다. Binding은 그 아래에 있는 value에 대한 reference 같은 것이다. 만약 user가 지도와 상호작용을 하면, 지도는 region value를 현재 user interface에서 보이는 값으로 업데이트 한다.
         */
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
