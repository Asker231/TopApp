//
//  TopAppApp.swift
//  TopApp
//
//  Created by ASKER on 28.06.2023.
//

import SwiftUI
import Firebase
@main
struct TopAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
