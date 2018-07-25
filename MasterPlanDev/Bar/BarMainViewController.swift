//
//  BarMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class BarMainViewController: UIViewController {
    
    private var embedController: EmbedController?
    
    let barSegmentedControl: UISegmentedControl = {
        let barItems = ["Newest", "Rewarding", "Saved"]
       let segmentedControl = UISegmentedControl(items: barItems)
        segmentedControl.backgroundColor = secondaryBlue
        segmentedControl.tintColor = segmentedControl.backgroundColor
        let frame = UIScreen.main.bounds
        segmentedControl.frame = CGRect(x: frame.minX, y: frame.minY + 100,
                                        width: frame.width, height: 50)
        segmentedControl.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white, .font: segmentedControlFont!], for: .normal)
        segmentedControl.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white, .font: segmentedControlFont!], for: .selected)
        
        segmentedControl.addTarget(self, action: #selector(segmentSelection(sender:)), for: .valueChanged)
        
        return segmentedControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(barSegmentedControl)
        
        embedController = EmbedController(rootViewController: self)
        
        segmentSelection(sender: barSegmentedControl).view.frame = CGRect(x: barSegmentedControl.frame.minX, y: barSegmentedControl.frame.maxY, width: view.frame.width, height: view.frame.height-49)
        
        embedController?.append(viewController: segmentSelection(sender: barSegmentedControl))
        
    }
    
    @objc func segmentSelection(sender: UISegmentedControl) -> UIViewController {
        switch sender.selectedSegmentIndex {
        case 1:
            return BarRewardingViewController()
        case 2:
            return BarSavedViewController()
        default:
            return BarNewestViewController()
        }
    }
}
