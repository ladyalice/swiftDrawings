//
//  ViewController.swift
//  swiftDrawings
//
//  Created by Alice Karsevar on 4/28/15.
//  Copyright (c) 2015 Best Day Ever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func drawRect(rect: CGRect) {
        //context is the object used for drawing
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 3.0)
        CGContextSetStrokeColorWithColor(context, UIColor.purpleColor().CGColor)
        
        //create a path
        
       // CGContextMoveToPoint(context, 100, 60)
       // CGContextAddLineToPoint(context, 400, 320)
        
        
        //create a rectngle
        let rec = CGRectMake(50, 50, 200, 400)
        CGContextAddRect(context, rec)
        
        //actually draw the path
        CGContextStrokePath(context)
        
        //need to turn it into a UIImage
        let smartMan = UIImage(named: "carl.jpg")
        //figure out top point for image
        let location = CGPointMake(25, 25)
        smartMan?.drawAtPoint(location)
        
        

    }
    }




