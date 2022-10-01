//
//  building_landmark_appApp.swift
//  building-landmark-app
//
//  Created by woo94 on 2022/10/02.
//

import SwiftUI

/**
 SwiftUI app life cycle을 사용하는 app은 App protocol을 따른다.
 Structure의 body property는 하나 혹은 그보다 많은 scene을 return한다.
 @main attribute는 app의 entry point를 나타내준다.
 */
@main
struct building_landmark_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
