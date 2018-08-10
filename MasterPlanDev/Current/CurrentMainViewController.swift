//
//  CurrentMainViewController.swift
//  MasterPlanDev
//
//  Created by Joshua Shou on 7/29/18.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class CurrentMainViewController: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let current: UIView = {
        let view = UIView()
        view.backgroundColor = secondaryBlue
        let label = UILabel()
        label.text = "Current"
        label.textColor  = .white
        label.font = UIFont(name: "Avenir-Medium", size: 30)
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(containerView)
        view.addSubview(current)
        
        current.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        current.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        current.heightAnchor.constraint(equalToConstant: 40).isActive = true
        current.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        containerView.topAnchor.constraint(equalTo: current.bottomAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        

        add(asChildViewController: CurrentViewController())
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func add(asChildViewController viewController: UIViewController) {
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

}
