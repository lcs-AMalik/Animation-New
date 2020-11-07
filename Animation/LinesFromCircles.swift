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

    
    var circles: [MovingCircle] = [] // Empty list (array)
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        //Add circles
        for _ in stride(from: 1, through: 2, by: 1) {
            
        }
        for _ in 1...10 {
            
            var newCircle = MovingCircle(x: Int.random(in: 0...canvas.width),
                                         y: Int.random(in: 0...canvas.height),
                                         dx: 1,
                                         dy: -1,
                                         diameter: 75)
            
            //Now add the new circle to the list
            circles.append(newCircle)
            
        }
        
        canvas.drawShapesWithBorders = true
        canvas.borderColor = Color.black
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    
    func draw() {
        
        
        
        //        canvas.fillColor = Color.black
        canvas.drawShapesWithFill = true
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        canvas.defaultBorderWidth = 1
        
        //    updat each circles position on the canvas
        for i in 0...circles.count - 1 {
            circles[i].update(on: canvas)
        }
        
        
        for i in stride(from: 0, through: circles.count - 2, by: 1) {
            
            for j in stride(from: i + 1, through: circles.count - 1, by: 1){
                
                circles[i].drawLinewhenOverLapingWith(other: circles[j],
                                                      on: canvas)
                
            }
            
            
        }
        
    }
    
    
}
