//
//  RequestMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class RequestMainViewController: UIViewController {
    
    let requestSegmentedControl: UISegmentedControl = {
        let requestItems = ["Single", "Multiple", "Tutor", "Drafts"]
        let segmentedControl = UISegmentedControl(items: requestItems)
        segmentedControl.backgroundColor = secondaryBlue
        segmentedControl.tintColor = segmentedControl.backgroundColor
        let frame = UIScreen.main.bounds
        segmentedControl.frame = CGRect(x: frame.minX, y: frame.minY + 100,
                                        width: frame.width, height: 50)
        segmentedControl.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white, .font: segmentedControlFont!], for: .normal)
        segmentedControl.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white, .font: segmentedControlFont!], for: .selected)
        
        return segmentedControl
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .yellow
        view.addSubview(requestSegmentedControl)
    }
}
