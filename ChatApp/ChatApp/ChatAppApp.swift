//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Arnav Goel on 12/23/23.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
