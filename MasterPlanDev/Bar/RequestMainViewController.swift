//
//  RequestMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

let containerViewRequest: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    
    return view
}()

class RequestMainViewController: UIViewController {
    
    let profilepic: UIImageView  = {
        let image = UIImageView()
        image.backgroundColor = mainBlue
        image.layer.borderWidth = 0
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = 75
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 150).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return image
    }()
    
    let changepic: UIImageView = {
        let image1 = UIImageView()
        image1.image = profilepicture.image
        image1.layer.borderWidth = 0
        image1.layer.masksToBounds = false
        image1.layer.borderColor = UIColor.black.cgColor
        image1.layer.cornerRadius = 60
        image1.clipsToBounds = true
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.widthAnchor.constraint(equalToConstant: 120).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 120).isActive = true


        return image1
    }()
    
    let requestSegmentedControl: UISegmentedControl = {
        let requestItems = ["Single", "Multiple", "Tutor", "Drafts"]
        let segmentedControl = UISegmentedControl(items: requestItems)
                
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        return segmentedControl
        
    }()


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(requestSegmentedControl)
        requestSegmentedControl.addUnderlineForSelectedSegment()
        
        view.addSubview(containerViewRequest)
        view.addSubview(profilepic)
        view.addSubview(changepic)
        
        containerViewRequest.topAnchor.constraint(equalTo: requestSegmentedControl.bottomAnchor).isActive = true
        containerViewRequest.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        containerViewRequest.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerViewRequest.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        profilepic.topAnchor.constraint(equalTo: containerViewRequest.topAnchor, constant: 20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: containerViewRequest.leftAnchor, constant: 20).isActive = true
        
        changepic.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepic.centerYAnchor.constraint(equalTo: profilepic.centerYAnchor).isActive = true
        
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
        containerViewRequest.addSubview(viewController.view)
        
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
