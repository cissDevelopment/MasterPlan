//
//  SegmentedControlHighlight.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/25.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

extension UISegmentedControl{
    func removeBorder(){
        let backgroundImage = UIImage.getColoredRectImageWith(color: secondaryBlue.cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(backgroundImage, for: .normal, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .selected, barMetrics: .default)
        self.setBackgroundImage(backgroundImage, for: .highlighted, barMetrics: .default)
        self.tintColor = secondaryBlue
        
        let frame = UIScreen.main.bounds
        self.frame = CGRect(x: frame.minX, y: frame.minY + 80,
                                        width: frame.width, height: 40)
        
        self.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white, .font: segmentedControlFont!], for: .normal)
        self.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white, .font: segmentedControlFont!], for: .selected)
        
        self.selectedSegmentIndex = 0 // Default segment

    }
    
    func addUnderlineForSelectedSegment(){
        removeBorder()
        
        let underlineWidth: CGFloat = self.bounds.size.width / CGFloat(self.numberOfSegments)
        let underlineHeight: CGFloat = 4.0
        let underlineXPosition = CGFloat(selectedSegmentIndex * Int(underlineWidth))
        let underLineYPosition = self.bounds.size.height - 4.0
        
        let underlineFrame = CGRect(x: underlineXPosition, y: underLineYPosition, width: underlineWidth, height: underlineHeight)
        let underline = UIView(frame: underlineFrame)
        underline.backgroundColor = .white
        
        underline.tag = 1
        self.addSubview(underline)
    }
    
    func changeUnderlinePosition(){
        guard let underline = self.viewWithTag(1) else {return}
            underline.frame.origin.x = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
    }
}

extension UIImage{
    
    class func getColoredRectImageWith(color: CGColor, andSize size: CGSize) -> UIImage{
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        let graphicsContext = UIGraphicsGetCurrentContext()
        graphicsContext?.setFillColor(color)
        let rectangle = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        graphicsContext?.fill(rectangle)
        let rectangleImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return rectangleImage!
    }
}
