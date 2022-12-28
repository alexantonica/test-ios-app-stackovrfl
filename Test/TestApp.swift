//
//  TestApp.swift
//  Test
//
//  Created by Alexandru Antonica on 28.12.2022.
//

import SwiftUI

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(appState: AppState.shared)
        }
    }
}

