//
//  DemoView.swift
//  MainView
//
//  Created by Mohamed on 5/19/19.
//  Copyright © 2019 68lion. All rights reserved.
//

import UIKit

class DemoView: UIView {

    var path: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
//    let width: CGFloat = 240.0
//    let height: CGFloat = 160.0
//
//    let demoView = DemoView(frame: CGRect(x: self.view.frame.size.width/2 - width/2,
//                                          y: self.view.frame.size.height/2 - height/2,
//                                          width: width,
//                                          height: height))
//
//    self.view.addSubview(demoView)


    override func draw(_ rect: CGRect) {
//        self.createRectangle()
         path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15.0)
        // Specify the fill color and apply it to the path.
//        UIColor.orange.setFill()
//        path.fill()
        
        // Specify a border (stroke) color.
        UIColor.lightGray.setStroke()
        path.stroke()
        
        self.layer.shadowOpacity=0.3
        
    }
    
        func createRectangle() {
            // Initialize the path.
            path = UIBezierPath()
            
            // Specify the point that the path should start get drawn.
            path.move(to: CGPoint(x: 0.0, y: 0.0))
            
            // Create a line between the starting point and the bottom-left side of the view.
            path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
            
            // Create the bottom line (bottom-left to bottom-right).
            path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
            
            // Create the vertical line from the bottom-right to the top-right side.
            path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
            
            // Close the path. This will create the last line automatically.
            path.close()
        
    }
}

