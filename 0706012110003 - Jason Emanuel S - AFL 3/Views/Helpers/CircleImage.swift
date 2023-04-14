//
//  CircleImage.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

// Display Circled Image Preview
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Turtlerock"))
    }
}
