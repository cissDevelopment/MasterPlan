//
//  Splash.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class LaunchScreen: UIViewController {
    let name: UILabel = {
        let label = UILabel()
        let master = "MASTER"
        let plan = "PLAN"
        let size = 50
        
        let title = NSMutableAttributedString(string: master, attributes: [.font : UIFont(name: "Avenir-Black", size: CGFloat(size))!])
        title.append(NSAttributedString(string: plan, attributes: [.font : UIFont(name: "Avenir-Light", size: CGFloat(size))!]))
        
        label.attributedText = title
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(name)
        
        view.backgroundColor = mainBlue // Background color is mainBlue
        
        name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        name.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
