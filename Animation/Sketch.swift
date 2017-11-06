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
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        
        // Set change in position
        dx = 1
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Set change in position
        x += dx
        
        // Change position
        let r : Double = 50
        let a = -0.022
        for k in stride(from: 500.0, to: 0.0, by: -100.0) {
            y = Int( a * pow(Double(x) - r, 2) + k)
            
            // Draw an ellipse in the middle of the canvas
            canvas.drawEllipse(centreX: x, centreY: y, width: 15, height: 15)

        }
        
        
        
    }
    
}
