//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//
import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt1: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    // Add many functions
    // This is now a list, or an array, of functions
    var functions: [MathFunction] = []    // empty list
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
             
        // Initialize many functions
        for i in 1...40 {
            
            // Create the functions
            let newFunction = MathFunction(a: 50.0,
                                           k: 1.0,
                                           d: CGFloat(i) * 25 - 200,
                                           c: 0,
                                           canvas: canvas,
                                           type: .sine)
            // add it to the list
            functions.append(newFunction)
            
        }
        
        // Speed
        canvas.framesPerSecond = 30
    }

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Clear the canvas
        //Opaque white, for now
        canvas.fillColor = Color(hue: 224,
                                 saturation: 0,
                                 brightness: 100,
                                 alpha: 20)
        
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

        // What frame are we on?
//        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 5
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

        // Randomly change the verticle position
        let newC = Int.random(in: -150...150)
        
       // Draw the intire list of functions all at once
        for x in 0...canvas.width {
            
            // Update the position of that one spiral
            for functions in functions {
                
                // functions.c = CGFloat(newC)
                
                // Gradualy chnage the verticle stretch/ compression
                functions.a = 200.0 * sin(Degrees(canvas.frameCount).asRadians() / 0.5)
                
                functions.update(on: canvas,
                                 usingInputValue: x)

        }
        
                }

    
    }

}
