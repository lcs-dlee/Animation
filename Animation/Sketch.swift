import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Chane in position
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
        
        // Draw an ellipse 1
        canvas.fillColor = Color.yellow
        canvas.borderColor = Color.yellow
        canvas.drawEllipse(centreX: x - offset, centreY: x - offset, width: 50, height: 50)
        
        // Draw an ellipse 2
        canvas.fillColor = Color.blue
        canvas.borderColor = Color.blue
        canvas.drawEllipse(centreX: x + offset, centreY: x - offset, width: 50, height: 50)
        
        // Draw an ellipse 3
        canvas.fillColor = Color.green
        canvas.borderColor = Color.green
        canvas.drawEllipse(centreX: x - offset, centreY: x + offset, width: 50, height: 50)
        
        // Draw an ellipse 4
        canvas.fillColor = Color.red
        canvas.borderColor = Color.red
        canvas.drawEllipse(centreX: x + offset, centreY: x + offset, width: 50, height: 50)
        
    }
    
}

