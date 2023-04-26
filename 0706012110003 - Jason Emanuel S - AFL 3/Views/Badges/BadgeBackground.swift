//
//  BadgeBackground.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                // Add a starting point to path
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale : CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                // create a new path to which the path will move to
                path.move(
                    to: CGPoint(
                        // calculate x as 95% of rectangle + offset
                        x: width * 0.95 + xOffset,
                        // calculate y as 20% of height + HexagonParameters.adjustment
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                // loop through each segment in HexagonParameters.segment array
                HexagonParameters.segments.forEach { segment in
                    // add a straight line to the current point in path
                    path.addLine(
                        to: CGPoint(
                            // calculate x coordinate by multiplying width with segment's line.x property added with xOffset
                            x: width * segment.line.x + xOffset,
                            // calculate y coordinate by multiplying height with segment's line.y property
                            y: height * segment.line.y
                        )
                    )
                    
                    // add a quadratic curve to the current point in path
                    path.addQuadCurve(
                        to: CGPoint(
                            // calculate x coordinate by multiplying width with segment's curve.x property added with xOffset
                            x: width * segment.curve.x + xOffset,
                            // calculate y coordinate by multiplying height with segment's curve.y property
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            // calculate x coordinate by multiplying width with segment's control.x property added with xOffset
                            x: width * segment.control.x + xOffset,
                            // calculate y coordinate by multiplying height with segment's control.y property
                            y: height * segment.control.y
                        )
                    )
                }
            }
            // Hexagon Background
            .fill(.linearGradient(
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y : 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit)
    }
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

// Show Preview of Hexagon
struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
