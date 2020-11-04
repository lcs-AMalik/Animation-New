//: [Previous](@previous)

import Foundation
//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// colors

let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let gold = Color(hue: 40, saturation: 90, brightness: 100, alpha: 100)

// turn off boarders
canvas.drawShapesWithBorders = false

// black background
canvas.fillColor = black
canvas.fillColor = black

// Draw background
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Draw text
canvas.textColor = gold
canvas.drawText(message: "Drake", at: Point(x: 15, y: 25), size: 30, kerning: 0 )
canvas.drawText(message: "OVO", at: Point(x: 15, y: 580), size: 10, kerning: 0 )
canvas.drawText(message: "OCTOBER'S VERY OWN", at: Point(x: 15, y: 565), size: 10, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 175, y: 500), size: 50, kerning: 0 )
canvas.drawText(message: "V", at: Point(x: 215, y: 485), size: 50, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 250, y: 500), size: 50, kerning: 0 )
canvas.drawText(message: "OCTOBER'S VERY OWN", at: Point(x: 15, y: 250), size: 40, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 150, y: 300), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 350, y: 150), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 250, y: 20), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 400, y: 500), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 25, y: 470), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 370, y: 570), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 150, y: 175), size: 30, kerning: 0 )
canvas.drawText(message: "O", at: Point(x: 225, y: 140), size: 30, kerning: 0 )
canvas.drawText(message: "V", at: Point(x: 310, y: 360), size: 30, kerning: 0 )
canvas.drawText(message: "V", at: Point(x: 350, y: 450), size: 30, kerning: 0 )
canvas.drawText(message: "V", at: Point(x: 60, y: 400), size: 30, kerning: 0 )
canvas.drawText(message: "V", at: Point(x: 65, y: 125), size: 30, kerning: 0 )
canvas.drawText(message: "V", at: Point(x: 350, y: 75), size: 30, kerning: 0 )


//Draw line
canvas.lineColor = gold
canvas.drawLine(from: Point(x: 0, y: 505), to: Point(x: 210, y: 505), capStyle: .round)
canvas.drawLine(from: Point(x: 250, y: 505), to: Point(x: 400, y: 505), capStyle: .round)

//OWL LINE THICKNESS
canvas.defaultLineWidth = 4

//Drawing owl
canvas.drawLine(from: Point(x: 180, y: 325), to: Point(x: 260, y: 325))
canvas.drawLine(from: Point(x: 215, y: 325), to: Point(x: 220, y: 340))
canvas.drawLine(from: Point(x: 245, y: 325), to: Point(x: 247, y: 340))

canvas.drawLine(from: Point(x: 212, y: 344), to: Point(x: 228, y: 341))
canvas.drawLine(from: Point(x: 240, y: 342), to: Point(x: 255, y: 342))

canvas.drawLine(from: Point(x: 212, y: 344), to: Point(x: 215, y: 365))
canvas.drawLine(from: Point(x: 228, y: 341), to: Point(x: 235, y: 360))
canvas.drawLine(from: Point(x: 240, y: 342), to: Point(x: 235, y: 360))
canvas.drawLine(from: Point(x: 255, y: 355), to: Point(x: 255, y: 342))


// draw stumy and face curve
canvas.drawCurve(from: Point(x: 235, y: 360),
                 to: Point(x: 160, y: 490),
                 control1: Point(x: 170, y: 375),
                 control2: Point(x: 150, y: 455),
                 showControlPoints: false, capStyle: .round)

canvas.drawCurve(from: Point(x: 158, y: 460),
                 to: Point(x: 222, y: 490),
                 control1: Point(x: 160, y: 420),
                 control2: Point(x: 250, y: 425),
                 showControlPoints: false, capStyle: .round)

//Draw line
canvas.drawLine(from: Point(x: 160, y: 490), to: Point(x: 170, y: 480))
canvas.drawLine(from: Point(x: 222, y: 490), to: Point(x: 213, y: 480))

//Draw head and bottom right curve

canvas.drawCurve(from: Point(x: 170, y: 480),
                 to: Point(x: 213, y: 480),
                 control1: Point(x: 180, y: 489),
                 control2: Point(x: 200, y: 489),
                 showControlPoints: false, capStyle: .round)

canvas.drawCurve(from: Point(x: 255, y: 355),
                 to: Point(x: 290, y: 334),
                 control1: Point(x: 275, y: 335),
                 control2: Point(x: 270, y: 330),
                 showControlPoints: false, capStyle: .round)

//Draw line from bottom right to wing
canvas.drawLine(from: Point(x: 290, y: 334), to: Point(x: 285, y: 345))

// Draw  wing curve

canvas.drawCurve(from: Point(x: 223, y: 450),
                 to: Point(x: 300, y: 336),
                 control1: Point(x: 205, y: 400),
                 control2: Point(x: 205, y: 405),
                 showControlPoints: false, capStyle: .round)

canvas.drawCurve(from: Point(x: 223, y: 450),
                 to: Point(x: 300, y: 336),
                 control1: Point(x: 272, y: 410),
                 control2: Point(x: 272, y: 415),
                 showControlPoints: false, capStyle: .round)


//OWL LINE FACE THICKNESS
canvas.defaultLineWidth = 4

// Draw face
canvas.drawLine(from: Point(x: 192, y: 445), to: Point(x: 182, y: 470))
canvas.drawLine(from: Point(x: 192, y: 445), to: Point(x: 202, y: 470))

//Fill in color foe eyes
canvas.fillColor = gold

// Draw 1st layer eyes using circles
canvas.drawEllipse(at: Point(x: 176, y: 465), width: 18, height: 18)
canvas.drawEllipse(at: Point(x: 208, y: 465), width: 18, height: 18)

//Fill in color foe eyes
canvas.fillColor = Color.black

// Draw 2nd layer eyes using circles
canvas.drawEllipse(at: Point(x: 176, y: 465), width: 12, height: 12)
canvas.drawEllipse(at: Point(x: 208, y: 465), width: 12, height: 12)

//Fill in color foe eyes
canvas.fillColor = gold

// Draw 3rd layer eyes using circles
canvas.drawEllipse(at: Point(x: 176, y: 465), width: 9, height: 9)
canvas.drawEllipse(at: Point(x: 208, y: 465), width: 9, height: 9)



canvas.fillColor = gold
// Draw the Axis with a scale
canvas.drawAxes(withScale: true, by: 50)
/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

var str = "Hello, playground"

//: [Next](@next)
