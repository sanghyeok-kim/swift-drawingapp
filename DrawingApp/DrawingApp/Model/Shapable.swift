//
//  Shapable.swift
//  DrawingApp
//
//  Created by 김상혁 on 2022/03/01.
//

import Foundation
import UIKit

protocol Shapable: CustomStringConvertible {
    var id: Identifier { get }
    var size: Size { get }
    var point: Point { get }
    var backGroundColor: Color { get }
    var alpha: Alpha { get }
}

extension Shapable {
    var description: String {
        return "(\(self.id)), \(self.point), \(self.size), \(self.backGroundColor)"
    }
}

extension Shapable {
    func getUIColor() -> UIColor {
        let red = backGroundColor.red / Color.Range.upper
        let green = backGroundColor.green / Color.Range.upper
        let blue = backGroundColor.blue / Color.Range.upper
        let alpha = alpha.value
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    func getShapeFrame() -> CGRect {
        let xCoordinate = point.x
        let yCoordinate = point.y
        
        let width = size.width
        let height = size.height
        
        let frame = CGRect(x: xCoordinate, y: yCoordinate, width: width, height: height)
        return frame
    }
}
