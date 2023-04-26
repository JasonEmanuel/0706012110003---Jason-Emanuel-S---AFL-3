//
//  MapView.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
//    @State private var region = MKCoordinateRegion()
    
    // make medium size zoom default
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    // to characterize the zoom level
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"
        
        var id: Zoom {
            return self
        }
    }
    
    // change the longitude and latitude delta depending on the zoom
    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.02
        case .medium: return 0.2
        case .far: return 2
        }
    }
    
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }
    
    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
    
    //Sets MKMapView's visible region with a fixed span of 0.2 for both latitude and longitude based on a given coordinate.
//    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
//        region = MKCoordinateRegion(
//            center: coordinate,
//            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
//    }
}

// Display Map Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868))
    }
}
