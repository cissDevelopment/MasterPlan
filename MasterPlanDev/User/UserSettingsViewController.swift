//
//  UserSettingsViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class UserSettingsViewController: UIViewController {
    
    let profile : UIButton = {
        let button = UIButton()
        
        button.layer.borderColor = mainBlue.cgColor
        button.layer.borderWidth = 10
        button.layer.cornerRadius = 75
        button.setImage(#imageLiteral(resourceName: "Ryan Gosling"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let firstName : UILabel = {
        let label = UILabel()
        
        label.text = "Joshua"
        
        label.textColor = .white
        label.font = UIFont(name: "Avenir-Heavy", size: 50)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let lastName : UILabel = {
        let label = UILabel()
        
        label.textColor = .white
        label.font = UIFont(name: "Avenir-Heavy", size: 50)
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.backgroundColor = lightBlue
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = lightBlue
    }

}
