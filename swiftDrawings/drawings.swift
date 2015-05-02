//
//  drawings.swift
//  swiftDrawings
//
//  Created by Alice Karsevar on 4/28/15.
//  Copyright (c) 2015 Best Day Ever. All rights reserved.
//

import UIKit

class drawings: UIView {

    
    override func drawRect(rect: CGRect) {
        //context is the object used for drawing
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 3.0)
        CGContextSetStrokeColorWithColor(context, UIColor.purpleColor().CGColor)
        
        //create a path
        
       CGContextMoveToPoint(context, 100, 60)
       CGContextAddLineToPoint(context, 400, 320)
        
        
        //create a rectngle
        //  let rec = CGRectMake(50, 50, 200, 400)
        // CGContextAddRect(context, rec)
        
        //actually draw the path
        CGContextStrokePath(context)
        
        
        
        //background image
        let space = UIImage(named: "space1.jpg")
        //get reference of screen dynamically so you know for images etc
        let screen = UIScreen.mainScreen().bounds
        space?.drawInRect(screen)
        
        
        
        //need to turn it into a UIImage
        let smartMan = UIImage(named: "carl.jpg")
        
        //figure out top point for image
        let location = CGPointMake(75, 100)
        smartMan?.drawAtPoint(location)
        
        
        
    
        
        
        
    }

}
