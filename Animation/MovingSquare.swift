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
class MovingSquare: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
        // Vertical position
    var y = 250
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change the verticle position
        y -= 1
        
        // set color
        canvas.fillColor = Color(hue: 200, saturation: 100, brightness: 100, alpha: 100)
        
        // draw a square in the middle of the canvas
        canvas.drawRectangle(at: Point(x: 250, y: y), width: 50, height: 50, anchoredBy: .centre)
        
        // set color
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 100)

        
        // draw a square in the left of the canvas
        canvas.drawRectangle(at: Point(x: 200, y: y), width: 50, height: 50, anchoredBy: .centre)
        
        // set color
        canvas.fillColor = Color(hue: 150, saturation: 100, brightness: 100, alpha: 100)
        
        // draw a square in the right of the canvas
        canvas.drawRectangle(at: Point(x: 300, y: y), width: 50, height: 50, anchoredBy: .centre)

        print("The y position is: \(y)")
        
    }
    
}


