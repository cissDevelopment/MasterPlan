//
//  ButtonHighlighted.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/31.
//  Copyright © 2018 YoochanShin. All rights reserved.
//
import UIKit

class HighlightedButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? .red : .green
        }
    }
}
