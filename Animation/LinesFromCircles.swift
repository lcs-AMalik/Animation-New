//
//  EmptySketch.swift

//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class LinesFromCircles: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    
// Make a small and a large cirlce
    var small: MovingCircle
    var large: MovingCircle
    
    
    // This function runs once
    override init() {

        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // set up small and large circle
        small = MovingCircle(x: Int.random(in: 0...canvas.width),
                             (y: Int.random(in: 0...canvas.height),
                             dx: 1,
                             dy: -1,
                             diameter: 50)
        large = MovingCircle(x: Int.random(in: 0...canvas.width),
                             (y: Int.random(in: 0...canvas.height),
                             dx: 1,
                             dy: -1,
                             diameter: 20)
        
        
        canvas.drawShapesWithBorders = true
        canvas.borderColor = Color.black

    }

    // This function runs repeatedly, forever, to create the animated effect
    // This function runs repeatedly, forever, to create the animated effect

    func draw() {

//        var int = Int.random(in: 1...500)
//        var int2 = Int.random(in: 1...500)

//        let rainbow = Color(hue: int2, saturation: int, brightness: int, alpha: int)


//        canvas.fillColor = Color.black
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        canvas.defaultBorderWidth = 1

//    updat each circles position on the canvas
        small.update(on: canvas)
        large.update(on: canvas)

// Check whether the circles overlap
        small.drawLinewhenOverLapingWith(other: large, on: canvas)
     
        
    }

}

