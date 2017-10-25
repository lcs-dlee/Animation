import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Change in position
    var offset : Int // difference in x
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // Set the difference for x
        offset = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Increasing the offset
        offset += 1
        
        // Draw an ellipse 1 on the bottom of the canvas
        canvas.fillColor = Color.black
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: x + offset, centreY: 50, width: 50, height: 50)
        
        // Draw an ellipse 2 in the canvas
        canvas.fillColor = Color.blue
        canvas.borderColor = Color.blue
        canvas.drawEllipse(centreX: x - offset, centreY: 150, width: 50, height: 50)
        
        // Draw an ellipse 3 in the middle of the canvas
        canvas.fillColor = Color.green
        canvas.borderColor = Color.green
        canvas.drawEllipse(centreX: x + offset, centreY: 250, width: 50, height: 50)
        
        // Draw an ellipse 4 in the canvas
        canvas.fillColor = Color.orange
        canvas.borderColor = Color.orange
        canvas.drawEllipse(centreX: x - offset, centreY: 350, width: 50, height: 50)
        
        // Draw an ellipse 5 in the top of the canvas
        canvas.fillColor = Color.purple
        canvas.borderColor = Color.purple
        canvas.drawEllipse(centreX: x + offset, centreY: 450, width: 50, height: 50)
        
    }
    
}


