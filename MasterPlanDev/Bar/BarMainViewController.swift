//
//  BarMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class BarMainViewController: UIViewController {
    
    let barSegmentedControl: UISegmentedControl = {
        let barItems = ["Newest", "Rewarding", "Saved"]
       let segmentedControl = UISegmentedControl(items: barItems)
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        return segmentedControl
    }()
    
    let containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(barSegmentedControl)
        view.addSubview(containerView)
        
        //setDefaultVC()
        add(asChildViewController: BarNewestViewController())
        barSegmentedControl.addUnderlineForSelectedSegment()
        
        containerView.topAnchor.constraint(equalTo: barSegmentedControl.bottomAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
        barSegmentedControl.changeUnderlinePosition()
    }
    
    private func updateView() {
        if barSegmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: BarRewardingViewController())
            remove(asChildViewController: BarSavedViewController())
            add(asChildViewController: BarNewestViewController())
        } else if barSegmentedControl.selectedSegmentIndex == 1 {
            remove(asChildViewController: BarNewestViewController())
            remove(asChildViewController: BarSavedViewController())
            add(asChildViewController: BarRewardingViewController())
        } else {
            remove(asChildViewController: BarNewestViewController())
            remove(asChildViewController: BarRewardingViewController())
            add(asChildViewController: BarSavedViewController())
        }
    }
    
    private func add(asChildViewController viewController: UITableViewController) {
        // Add Child View Controller
        addChildViewController(viewController)
        
        // Add Child View as Subview
        containerView.addSubview(viewController.view)
        viewController.view.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        viewController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        viewController.view.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        viewController.view.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
        
        // Configure Child View
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    private func remove(asChildViewController viewController: UITableViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
    
    
    private func setDefaultVC() {
        containerView.addSubview(BarNewestViewController().view)
    }
    
}
