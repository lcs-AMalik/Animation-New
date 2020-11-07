//
//  Moving circle.swift
//  Animation
//
//  Created by Abdul Malik on 2020-11-06.
//

import Foundation
import CanvasGraphics

// A class is just a container that stores:
// - state(information / data)
// - behaviors ( methods / functions that make something happen)
class MovingCircle {
    
    // 1. properties (the state)
    var x: Int
    var y: Int
    var dx: Int
    var dy: Int
    var diameter: Int
    
    // 2. Intializer (initialize, or "set up" the properties with a first value)
    
    init(x: Int, y: Int, dx: Int, dy: Int, diameter: Int) {
        
        // "self" refers to the properties from This class
        // light blue refers to property
        // the black refers to the local parameter value
        
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.diameter = diameter
        
    }
    
    // 3.  Methods (make things happen)
    func update(on canvas: Canvas) {
    
        // Move the circles
        y += dy
        x += dx
        
        // set circle colours
        canvas.drawShapesWithFill = false
        canvas.fillColor = Color.white
        
            // Draw the circle
        canvas.drawEllipse(at: Point(x: x, y: y),
                           width: diameter,
                           height: diameter)
        
        // Bounce first cirlcle at edges
        
        if x >= canvas.width {

            dx = -1

        } else if x <= 0 {

            dx = Int.random(in: -5...50)

        }  else if y >= canvas.height {

                dy = -1

        }   else if y <= 0 {

            dy = +1

        }

        
    }
    
}

