//
//  UserMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class UserMainViewController: UIViewController {
    
    let userSegmentedControl: UISegmentedControl = {
        let userItems = ["Stats", "Current", "Settings"]
        let segmentedControl = UISegmentedControl(items: userItems)
        
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
        
        view.addSubview(userSegmentedControl)
        view.addSubview(containerView)
        userSegmentedControl.addUnderlineForSelectedSegment()
        
        // Default VC
        containerView.addSubview(UserStatsViewController().view)
        
        containerView.topAnchor.constraint(equalTo: userSegmentedControl.bottomAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
        userSegmentedControl.changeUnderlinePosition()
    }
    
    private func updateView() {
        if userSegmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: UserCurrentViewController())
            remove(asChildViewController: UserSettingsViewController())
            add(asChildViewController: UserStatsViewController())
        } else if userSegmentedControl.selectedSegmentIndex == 1 {
            remove(asChildViewController: UserStatsViewController())
            remove(asChildViewController: UserSettingsViewController())
            add(asChildViewController: UserCurrentViewController())
        } else {
            remove(asChildViewController: UserStatsViewController())
            remove(asChildViewController: UserCurrentViewController())
            add(asChildViewController: UserSettingsViewController())
        }
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChildViewController(viewController)
        
        // Add Child View as Subview
        containerView.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }

}
