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
    
    let current: UILabel = {
        let label = UILabel()
        label.shadowColor = .black
        label.backgroundColor = secondaryBlue
        label.text = "             Current Page"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor  = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:30)

        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(containerView)
        view.addSubview(current)
        
        current.topAnchor.constraint(equalTo: view.topAnchor, constant:70).isActive = true
        current.bottomAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        current.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        current.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        
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
        
        // Configure Child View
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
