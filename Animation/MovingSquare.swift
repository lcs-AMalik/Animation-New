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
    var x = 250
    var x2 = 250
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change the verticle position
        x += 1
        x2 -= 1
        
        // set color
        canvas.fillColor = Color(hue: 150, saturation: 100, brightness: 100, alpha: 100)
        
        // draw a square in the middle of the canvas
        canvas.drawRectangle(at: Point(x: x, y: 450), width: 50, height: 50, anchoredBy: .centre)
        
        
        // set color
        canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 100, alpha: 100)

        // draw a square in the left of the canvas
        canvas.drawRectangle(at: Point(x: x2, y: 350), width: 50, height: 50, anchoredBy: .centre)
        
        
        // set color
        canvas.fillColor = Color(hue: 250, saturation: 100, brightness: 100, alpha: 100)
        
        // draw a square in the right of the canvas
        canvas.drawRectangle(at: Point(x: x, y: 250), width: 50, height: 50, anchoredBy: .centre)
        
        // set color
        canvas.fillColor = Color(hue: 80, saturation: 100, brightness: 100, alpha: 100)
        
        // draw a square in the middle of the canvas
        canvas.drawRectangle(at: Point(x: x2, y: 150), width: 50, height: 50, anchoredBy: .centre)
        
        // set color
        canvas.fillColor = Color(hue: 180, saturation: 100, brightness: 100, alpha: 100)
        
        // draw a square in the middle of the canvas
        canvas.drawRectangle(at: Point(x: x, y: 50), width: 50, height: 50, anchoredBy: .centre)
        
        print("The y position is: \(x)")
        
    }
    
}


