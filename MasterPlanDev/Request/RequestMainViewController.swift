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
        
        view.addSubview(requestSegmentedControl)
        requestSegmentedControl.addUnderlineForSelectedSegment()
        view.addSubview(containerView)
        
        // Default VC
        containerView.addSubview(RequestSingleViewController().view)
        
        containerView.topAnchor.constraint(equalTo: requestSegmentedControl.bottomAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
        requestSegmentedControl.changeUnderlinePosition()
    }
    
    private func updateView() {
        if requestSegmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: RequestMultipleViewController())
            remove(asChildViewController: RequestTutorViewController())
            remove(asChildViewController: RequestDraftsViewController())
            add(asChildViewController: RequestSingleViewController())
        } else if requestSegmentedControl.selectedSegmentIndex == 1 {
            remove(asChildViewController: RequestSingleViewController())
            remove(asChildViewController: RequestTutorViewController())
            remove(asChildViewController: RequestDraftsViewController())
            add(asChildViewController: RequestMultipleViewController())
        } else if requestSegmentedControl.selectedSegmentIndex == 2 {
            remove(asChildViewController: RequestSingleViewController())
            remove(asChildViewController: RequestMultipleViewController())
            remove(asChildViewController: RequestDraftsViewController())
            add(asChildViewController: RequestTutorViewController())
        } else {
            remove(asChildViewController: RequestSingleViewController())
            remove(asChildViewController: RequestMultipleViewController())
            remove(asChildViewController: RequestTutorViewController())
            add(asChildViewController: RequestDraftsViewController())
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
