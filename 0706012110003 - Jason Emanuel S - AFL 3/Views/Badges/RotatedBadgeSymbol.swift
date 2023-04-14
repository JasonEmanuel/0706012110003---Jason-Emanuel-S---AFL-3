//
//  RotatedBadgeSymbol.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        // Rotate logo from BadgeSymbol
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

// Show preview of rotated logo
struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
