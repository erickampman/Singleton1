//
//  Singleton1App.swift
//  Singleton1
//
//  Created by Eric Kampman on 4/14/24.
//

import SwiftUI
import SwiftData

@main
struct Singleton1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.modelContainer(for: [Singleton.self], isAutosaveEnabled: true)
        }
    }
}
