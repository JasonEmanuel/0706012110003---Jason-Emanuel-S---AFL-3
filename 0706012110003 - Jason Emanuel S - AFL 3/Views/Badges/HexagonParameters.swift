//
//  HexagonParameters.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation

struct HexagonParameters {
    
    // Define segment structure to hold 3 points that represent 1 side of hexagon
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.085
    
    // Array to hold segments
    static let segments = [
        Segment(
             line:    CGPoint(x: 0.60, y: 0.05),
             curve:   CGPoint(x: 0.40, y: 0.05),
             control: CGPoint(x: 0.50, y: 0.00)
         ),
         Segment(
             line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
             curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
             control: CGPoint(x: 0.00, y: 0.25 + adjustment)
         ),
         Segment(
             line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
             curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
             control: CGPoint(x: 0.00, y: 0.75 - adjustment)
         ),
         Segment(
             line:    CGPoint(x: 0.40, y: 0.95),
             curve:   CGPoint(x: 0.60, y: 0.95),
             control: CGPoint(x: 0.50, y: 1.00)
         ),
         Segment(
             line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
             curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
             control: CGPoint(x: 1.00, y: 0.75 - adjustment)
         ),
         Segment(
             line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
             curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
             control: CGPoint(x: 1.00, y: 0.25 + adjustment)
         )
    ]
}
