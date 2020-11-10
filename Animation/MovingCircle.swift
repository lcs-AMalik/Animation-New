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
    var drawCircle: Bool
    
    // Computer property
    var radius: Int {
        return self.diameter / 2
    }
    
    // 2. Intializer (initialize, or "set up" the properties with a first value)
    
    init(x: Int, y: Int, dx: Int, dy: Int, diameter: Int, drawCircle: Bool) {
        
        // "self" refers to the properties from This class
        // light blue refers to property
        // the black refers to the local parameter value
        
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.diameter = diameter
        self.drawCircle = drawCircle
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
        if drawCircle == true {
            canvas.drawEllipse(at: Point(x: x, y: y),
                               width: diameter,
                               height: diameter)
        }
        
        
        
        
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
    
    func drawLinewhenOverLapingWith(other: MovingCircle,
                                    on canvas: Canvas) {
        
        // Find the disance between the circles
        let a = Double(self.x - other.x)
        let b = Double(self.y - other.y)
        let d = sqrt(a*a + b*b)
        
       // map the distance between circles to alpha
        let alpha = map(value: d, fromLower: 50, fromUpper: Double(self.radius + other.radius), toLower: 0, toUpper: 360)
        
        // set the canvas line color to reflect the alpha value
        canvas.lineColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: Int(alpha))
        
        
        //When the circles overlap, draw a line between them
        if d < Double (self.radius + other.radius) {
            canvas.drawLine(from: Point(x: self.x, y: self.y), to: Point(x: other.x, y: other.y))
            
        }
    }
}

