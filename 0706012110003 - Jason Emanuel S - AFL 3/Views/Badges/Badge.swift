//
//  Badge.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct Badge: View {
    
    // Call the mountain logo
    var badgeSymbols: some View {
        
        // Make 8 of mountain logos rotating
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    // Combine the hexagon and the mountain logo
    var body: some View {
        ZStack{
            
            // Call the hexagon
            BadgeBackground()
            
            // Show the mountain logo
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

// Show Preview of combined logo
struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
