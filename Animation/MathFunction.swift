//
//  MathFunction.swift
//  Animation
//
//  Created by Russell Gordon on 2020-11-09.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

// Enumeration
// Define a list of choices that you want the user of your code to select from
enum FunctionType {
    case linear
    case quadratic
    case cubic
    case squareRoot
    case absoluteValue
    case exponential
    case reciprocal
    case sine
}

// Shape type
enum ShapeType {
    case none
    case star
}

// Define a class that creates a mathematical function
// - a "class" is just a way to group data (properties) together
//   with behaviour (things that we want to happen)
class MathFunction {
    
    // 1. Properties
    //
    //    A property is something that describes the item.
    //    e.g.: A student at LCS has a house, a hair color, a height
    
    var lastPoint: Point
    var a: CGFloat // vertical stretch / compression / reflection
    var k: CGFloat // Horizontal stretch / compression / reflection
    var d: CGFloat // vertical shift
    var c: CGFloat // Horizontal shift
    var type: FunctionType // Tell us what shape/ math function to use
    var delayInSeconds: Int // How much of a delay to have before the animation begins
    var shapeType: ShapeType // What shape to draw along the path, if any
    // 2. Initializer
    //
    //    An initializer has one job: give each property an initial value
    
    init(a: CGFloat,
         k: CGFloat,
         d: CGFloat,
         c: CGFloat,
         canvas: Canvas,
         type: FunctionType,
         delayInSeconds: Int = 0,
         shapeType: ShapeType = .none) {
        
        // I want every function to begin off the left sid eof the canvas
        self.lastPoint = Point(x: -1 * canvas.width / 2 - 5, y: 0)
                
        // self the hue
        self.a = a
        self.k = k
        self.d = d
        self.c = c
        self.type = type
        self.delayInSeconds = delayInSeconds
        self.shapeType = shapeType
    }
    
    // 3. Methods
    //
    //    Here we describe what behaviour we want to have happen.
    // Update (or draw) the position of this function
    func update(on canvas: Canvas, usingInputValue x: Int) {
        
        // Only draw on the canvas after the delay in seconds has been reaches
        if canvas.frameCount > delayInSeconds * canvas.framesPerSecond {
        
            // Make sure each re draw of all functions begins off-screen
            if x == 0 {
                // I want every function to begin off the left sid eof the canvas
                self.lastPoint = Point(x: -1 * canvas.width / 2 - 5, y: 0)
            }
            
          
            // Start drawing after the first frame
            if x > 0 && x < canvas.width {

                // Determine the next X position
                let nextX : CGFloat = CGFloat(x - canvas.width / 2)

                // Determine the next Y position
                var nextY : CGFloat = 0.0
                
                // set y using a quadratic func
                switch type {
                case .linear:
                    nextY = a * ((nextX - d) / k) + c
                case .quadratic:
                    nextY = a * pow((nextX - d) / k, 2.0) + c
                case .cubic:
                    nextY = a * pow((nextX - d) / k, 3.0) + c
                case .squareRoot:
                    nextY = a * sqrt((nextX - d) / k) + c
                case .absoluteValue:
                    nextY = a * abs((nextX - d) / k) + c
                case .exponential:
                    nextY = a * exp((nextX - d) / k) + c
                case .reciprocal:
                    nextY = a * 1.0/((nextX - d) / k) + c
                case .sine:
                    nextY = a * sin((nextX.asRadians() - d) / k) + c

                }
            
                // Set the next point
                let nextPoint = Point(x: nextX, y: nextY)
    //            print(nextPoint)
                
                // Set the line color
                canvas.lineColor = Color(hue: 190,
                                         saturation: 80,
                                         brightness: 90,
                                         alpha: 30)
                
                
                // Draw a line from the last point to the next point
                canvas.drawLine(from: lastPoint, to: nextPoint)
                
                // Whether to draw a shape or not
                if shapeType == .none {
                    
                    // Draw a line from the last point to the next point
                    canvas.drawLine(from: lastPoint, to: nextPoint)
                    
                } else if shapeType == .star {
                    
                    // Yellow color
                    canvas.fillColor = Color(hue: 56, saturation: 70, brightness: 90, alpha: 80)
                    canvas.drawShapesWithFill = true
                    
                    var star: [Point] = []
                    star.append(Point(x: nextX + 0, y: nextY - 50))
                    star.append(Point(x: nextX + 14, y: nextY - 20))
                    star.append(Point(x: nextX + 47, y: nextY - 15))
                    star.append(Point(x: nextX + 23, y: nextY + 7))
                    star.append(Point(x: nextX + 29, y: nextY + 40))
                    star.append(Point(x: nextX + 0, y: nextY + 25))
                    star.append(Point(x: nextX - 29, y: nextY + 40))
                    star.append(Point(x: nextX - 23, y: nextY + 7))
                    star.append(Point(x: nextX - 47, y: nextY - 15))
                    star.append(Point(x: nextX - 14, y: nextY - 20))
                    canvas.drawCustomShape(with: star)
                    
                }
                

                // Set the "new" last point, now that the line is drawn
                lastPoint = nextPoint

            }
           
            
        }
        
        
    }
    
}
