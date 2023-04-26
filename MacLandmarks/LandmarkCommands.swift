//
//  LandmarkCommands.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct LandmarkCommands: Commands {
    // property wrapper to track the currently selected landmark
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    var body: some Commands {
        // include command for toggling the sidebar
        SidebarCommands()
        
        // add new command menu
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            // set keyboard shortcut
            .keyboardShortcut("f", modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

// extend the Focused Values structure
private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
