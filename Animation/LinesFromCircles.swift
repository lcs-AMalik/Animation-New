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
    
    //    var small: MovingCircle
    //    var large: MovingCircle
    
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
        for i in 0...circles.count - 1 {
            circles[i].update(on: canvas)
        }
        
        // Check whether the circles overlap
        //        circles[0].drawLinewhenOverLapingWith(other: circles[1],
        //                                         on: canvas)
        //        circles[0].drawLinewhenOverLapingWith(other: circles[2],
        //                                         on: canvas)
        //        circles[0].drawLinewhenOverLapingWith(other: circles[3],
        //                                         on: canvas)
        //        circles[1].drawLinewhenOverLapingWith(other: circles[2],
        //                                         on: canvas)
        //        circles[1].drawLinewhenOverLapingWith(other: circles[3],
        //                                         on: canvas)
        //        circles[2].drawLinewhenOverLapingWith(other: circles[3],
        //                                         on: canvas)
        
        for i in stride(from: 0, through: circles.count - 2, by: 1) {
            
            for j in stride(from: i + 1, through: circles.count - 1, by: 1){
                
                circles[i].drawLinewhenOverLapingWith(other: circles[j],
                                                      on: canvas)
                
            }
            
            
        }
        
    }
    
    
}

