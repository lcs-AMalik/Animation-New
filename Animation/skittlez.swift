//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class skittlez: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x: Int
    
    // This function runs once
    override init() {
        
        // Set starting position
        x = 250
        
        canvas = Canvas(width: 300, height: 300)

        // Slow the animation down
        canvas.framesPerSecond = 1

        }

        // This function runs repeatedly, forever, to create the animation effect
        func draw() {

        // clear the background each time
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 300, height: 300)

        // Generate seven random 0 or 1's
        for x in stride(from: 1, through: 300, by: 50) {
            
            // Generate the random 0 or 1
            let skittlez = Bool.random()
            
            // When skittlez is 1 (or true) we draw first
            if skittlez == true {
                
            // Draw the line first, then go every other
                for y in stride(from: 50, through: 250, by: 100) {
                    
                    // Draw line
                    canvas.drawLine(from: Point(x: x, y: y),
                                    to: Point(x: x, y: y + 50))
                   
                }
                
            } else {
            // Draw a gap first, then go every other
                for y in stride(from: 0, through: 200, by: 100) {
                
                //Draw a line
                                canvas.drawLine(from: Point(x: x, y: y),
                                                to: Point(x: x, y: y + 50))
                }
            
            }
        }

        }

}
