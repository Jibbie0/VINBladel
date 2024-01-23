//
//  VinBladelNewApp.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/19/24.
//

import SwiftUI
import FirebaseCore

@main
struct VinBladelNewApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
