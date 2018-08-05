//
//  SubjectsViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/8/5.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class SubjectsViewController: UIViewController {
    
    let topBar: UIView = {
       let view = UIView()
        view.backgroundColor = mainBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let subjects : UILabel = {
        let label = UILabel()
        label.text = "Subjects"
        label.font = UIFont(name: "Avenir-Heavy", size: 30)
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: "<", attributes: [.font : UIFont(name: "Avenir-Black", size: 30)!]), for: .normal)
        button.titleLabel?.textColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(dismissSubjectsViewController), for: .touchUpInside)
        
        return button
    }()
    
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
       return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(topBar)
        topBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topBar.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topBar.heightAnchor.constraint(equalToConstant: 80).isActive = true
        topBar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        topBar.addSubview(subjects)
        subjects.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subjects.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        
        topBar.addSubview(backButton)
        
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        
        let subjectsView = SubjectsTableViewController().view!
        
        subjectsView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.addSubview(subjectsView)
        
        subjectsView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        subjectsView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        subjectsView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
        subjectsView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func  dismissSubjectsViewController() {
        dismiss(animated: true, completion: nil)
    }
}
