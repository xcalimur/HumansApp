//
//  HumansAppApp.swift
//  HumansApp
//
//  Created by Cami Mata on 11/7/22.
//

import SwiftUI

@main
struct HumansAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HumansView()
                    .tabItem {
                        Symbols.person
                        Text("Home")
                    }
            }
        }
    }
}
