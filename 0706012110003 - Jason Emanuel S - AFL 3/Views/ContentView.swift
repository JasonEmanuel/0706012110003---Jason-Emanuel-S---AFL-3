//
//  ContentView.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

// Display Preview of the Whole content
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}


