//
//  LandmarkList.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    // Filter Landmark Favorites
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                // If toggle is on, only show favorites
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                // Show all the landmarks
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .frame(minWidth: 300)
        }
    
        
// for 1 column only
//        NavigationStack {
//            List(landmarks) {landmark in
//                NavigationLink{
//                    LandmarkDetail(landmark: landmark)
//                } label: {
//                    LandmarkRow(landmark: landmark)
//                }
//            }
//            .navigationTitle("Landmarks")
//        }
    }
}

// Display Preview Landmark List Preview
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
