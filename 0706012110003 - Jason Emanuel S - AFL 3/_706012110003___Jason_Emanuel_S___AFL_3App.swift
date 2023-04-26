//
//  _706012110003___Jason_Emanuel_S___AFL_3App.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct _706012110003___Jason_Emanuel_S___AFL_3App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        // apply LandmarkCommands
        .commands {
            LandmarkCommands()
        }
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
