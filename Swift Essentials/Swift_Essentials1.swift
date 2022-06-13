//
//  Smart_MusicApp.swift
//  Smart Music
//
//  Created by Aaron Ramirez on 6/11/22.
//

import SwiftUI

@main
struct Smart_MusicApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
