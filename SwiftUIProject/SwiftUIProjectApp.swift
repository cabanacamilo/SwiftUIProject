//
//  SwiftUIProjectApp.swift
//  SwiftUIProject
//
//  Created by Camilo Cabana on 2022/01/24.
//

import SwiftUI

@main
struct SwiftUIProjectApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabBarView()
                .environmentObject(UserPreferences())
        }
    }
}
