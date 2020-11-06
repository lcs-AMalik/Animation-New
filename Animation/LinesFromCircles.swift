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

    
//center of first cicle
    var x1 = Int.random(in: 1...500)
    var y1 = Int.random(in: 1...500)
    var dx1 = 1
    var dy1 = 1

    
// center of second circle
    var x2 = Int.random(in: 1...500)
    var y2 = Int.random(in: 1...500)
    var dx2 = 1
    var dy2 = 1

    // This function runs once
    override init() {

        // Create canvas object – specify size

        canvas = Canvas(width: 500, height: 500)
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

//    canvas.fillColor = rainbow

//move first cirlce
    y1 += dy1
    x1 += dx1
        
        // move second circle
    x2 += dx2
    y2 += dy2

// set circle colors
        canvas.drawShapesWithFill = false
        canvas.fillColor = Color.white
        
// Draw first cirlce
    canvas.drawEllipse(at: Point(x: x1, y: y1), width: 50, height: 50)

        
        // Bounce first cirlce at edges
    if x1 >= 500 {
        
        dx1 = -1

    } else if x1 <= 0 {

        dx1 = Int.random(in: -5...111)

    }  else if y1 >= 500 {

            dy1 = -1

    }   else if y1 <= 0 {

        dy1 = +1

    }

        //Draw second circle
    canvas.drawEllipse(at: Point(x: x2, y: y2), width: 130, height: 130)
        

        if x2 >= 500 {

            dx2 = -1

        } else if x2 <= 0 {

            dx2 = Int.random(in: -5...50)

        }  else if y2 >= 500 {

                dy2 = -1

        }   else if y2 <= 0 {

            dy2 = +1

        }

     // Find the disance between the circles
        let a = Double(x1 - x2)
        let b = Double(x1 - y2)
        let d = sqrt(a*a + b*b)

        
        //When the circles overlap, draw a line between them
        if d < 100 {
            canvas.drawLine(from: Point(x: x1, y: y1), to: Point(x: x2, y: y2))
        }
        
    }

}

