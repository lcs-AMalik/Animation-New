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


//Draw line
canvas.lineColor = gold
canvas.drawLine(from: Point(x: 0, y: 505), to: Point(x: 210, y: 505), capStyle: .round)
canvas.drawLine(from: Point(x: 250, y: 505), to: Point(x: 400, y: 505), capStyle: .round)

//Drawing owl
canvas.drawLine(from: Point(x: 200, y: 325), to: Point(x: 260, y: 325), capStyle: .round)
canvas.drawLine(from: Point(x: 215, y: 325), to: Point(x: 220, y: 340), capStyle: .round)
canvas.drawLine(from: Point(x: 245, y: 325), to: Point(x: 247, y: 340), capStyle: .round)















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
