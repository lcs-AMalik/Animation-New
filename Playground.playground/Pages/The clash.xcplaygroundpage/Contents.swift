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
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)

// turn off boarders
canvas.drawShapesWithBorders = false

// black background
canvas.fillColor = Color.orange
canvas.borderColor = Color.orange

// Draw background
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Draw text
canvas.textColor = black

canvas.drawText(message: "the clash", at: Point(x: 15, y: 110), size: 30, kerning: 0 )

canvas.drawText(message: "with the brattles", at: Point(x: 10, y: 40), size: 10, kerning: 0 )

canvas.drawText(message: "and dead kennedys", at: Point(x: 10, y: 25), size: 10, kerning: 0 )

canvas.drawText(message: "matinee and eve", at: Point(x: 110, y: 40), size: 10, kerning: 0 )

canvas.drawText(message: "saturday / june 13 1981", at: Point(x: 110, y: 25), size: 10, kerning: 0 )

canvas.drawText(message: "bonds international casino", at: Point(x: 250, y: 40), size: 10, kerning: 0 )

canvas.drawText(message: "in times square, new york city", at: Point(x: 250, y: 25), size: 10, kerning: 0 )


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
