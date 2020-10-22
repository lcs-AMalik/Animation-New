//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class FourCorners: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.

    var canvas: Canvas

    // Position of circle

    var x = 250
    var y = 250
    var x1 = 250
    var y1 = 250
    var x2 = 250
    var y2 = 250
    var y3 = 250
    var x3 = 250

    // This function runs once
    override init() {
        // Create canvas object – specify size

        canvas = Canvas(width: 500, height: 500)

    }

    // This function runs repeatedly, forever, to create the animated effect

    func draw() {

        // Draw an ellipse in the middle of the canvas

        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        x -= 1
        y -= 1

        canvas.fillColor = Color.yellow
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 50, height: 50)
        y1 -= 1
        x1 += 1

        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: x2, y: y2), width: 50, height: 50)
        y2 += 1
        x2 += 1

        canvas.fillColor = Color.red
        canvas.drawEllipse(at: Point(x: x3, y: y3), width: 50, height: 50)
        y3 += 1
        x3 -= 1

        

    }

    

}
