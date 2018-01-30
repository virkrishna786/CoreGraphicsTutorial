//
//  Line.swift
//  CoreGraphicsTutorial
//
//  Created by Rajeev Kumar on 30/01/18.
//  Copyright © 2018 Vayam Technologies limited. All rights reserved.
//

import UIKit

class Line: UIView {
    
   override func draw(_ rect: CGRect) {
    
    // draw line with bazier path
    /*
            let path = UIBezierPath()
            path.move(to: CGPoint(x:  10, y: 60))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: 60))
            path.close()
            UIColor.darkGray.setStroke()
            path.stroke()
 
 */
    // draw line with uigraphics current context
    /*
    let context = UIGraphicsGetCurrentContext()
    context?.setLineWidth(2.0)
    context?.setStrokeColor(UIColor.blue.cgColor)
    context?.move(to: CGPoint(x: 30, y: 30))
    context?.addLine(to: CGPoint(x: 300, y: 400))
    context?.strokePath()
    
    */
    

//    let context = UIGraphicsGetCurrentContext()
//    context?.setLineWidth(2.0)
//    context?.setStrokeColor(UIColor.blue.cgColor)
//    context?.move(to: CGPoint(x:100, y: 100))
//    context?.addLine(to: CGPoint(x: 150, y: 150))
//    context?.addLine(to: CGPoint(x: 100, y: 200))
//    context?.addLine(to: CGPoint(x: 50, y: 150))
//    context?.addLine(to: CGPoint(x: 100, y: 100))
//     context?.setFillColor(UIColor.red.cgColor)
//    context?.fillPath()
//    context?.strokePath()
 
    
//    let context = UIGraphicsGetCurrentContext()
//    context?.setLineWidth(4.0)
//    context?.setStrokeColor(UIColor.blue.cgColor)
//    let rectangle = CGRect(x: 60,y: 170,width: 200,height: 80)
//    context?.addRect(rectangle)
//    context?.addEllipse(in: rectangle) // for elipse type
//    context?.strokePath()
    
    
    let context = UIGraphicsGetCurrentContext()
    context?.setLineWidth(4.0)
    context?.setStrokeColor(UIColor.blue.cgColor)
    context?.move(to: CGPoint(x: 100, y: 100))
    context?.addArc(tangent1End: CGPoint(x: 100, y: 200),
                    tangent2End: CGPoint(x: 300, y: 200), radius: 100)
    context?.strokePath()
    
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
