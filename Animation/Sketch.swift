import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    // Change of position
    var dx : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        
        // Set change in position
        dx = 2
        dy = 1
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += dx
        y += dy
    
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        
        // Empty the Ellipse
        canvas.drawShapesWithFill = false
        
        // Draw a bigger ellipse in the middle of the canvas
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x, centreY: 250, width: 250, height: 250, borderWidth: 3)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 3, height: 3)
        
        // Draw a smaller ellipse in the middle of the canvas
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x, centreY: y, width: 70, height: 70, borderWidth: 3)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 3, height: 3)
        
        // Back to Origin
        canvas.drawShapesWithFill = true
        
        // Draw a line between two circles
        canvas.drawLine(fromX: x, fromY: 250, toX: x, toY: y)
        canvas.lineColor = Color.red
        
        // Check the position_Bounce at the right edge
        if x > 500{
            dx = -1
        }
        
        // Check the position_Bounce at the left edge
        if x < 0{
            dx = 1
            
        }
        
        // Check the position_Bounce at the top edge
        if y > 500{
            dy = -1
        }
    
        // Check the position_Bounce at the bottom edge
        if y < 0{
            dy = 1
        }
        
    }
}
