//
//  ViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
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
    
    let slogan: UILabel = {
        let label = UILabel()
        
        label.text = "All your service. In one place."
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Heavy", size: 23)
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let signUp: UIButton = {
        let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 20)
        
        button.setAttributedTitle(NSAttributedString(string: "Sign Up", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = CGFloat(20)
        button.layer.borderWidth = 2
        button.layer.borderColor = white.cgColor
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(signUpAction(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    let login: UIButton = {
        let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 20)
        
        button.setAttributedTitle(NSAttributedString(string: "Login", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = mainBlue
        button.layer.cornerRadius = CGFloat(20)
//        button.layer.borderWidth = 2
//        button.layer.borderColor = white.cgColor
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(loginAction(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(name)
        view.addSubview(slogan)
        view.addSubview(signUp)
        view.addSubview(login)
        
        view.backgroundColor = mainBlue // Background color is mainBlue
        
        name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        name.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        slogan.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slogan.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 343).isActive = true
        
        signUp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signUp.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        signUp.widthAnchor.constraint(equalToConstant: 350).isActive = true
        signUp.heightAnchor.constraint(equalToConstant: CGFloat(40)).isActive = true
        
        login.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        login.topAnchor.constraint(equalTo: signUp.bottomAnchor, constant: 30).isActive = true
        login.widthAnchor.constraint(equalToConstant: 350).isActive = true
        login.heightAnchor.constraint(equalToConstant: CGFloat(40)).isActive = true
    }
    
    @objc func loginAction(sender: UIButton!) {
        performSegue(withIdentifier: "Login", sender: login)
    }
    
    @objc func signUpAction(sender: UIButton!) {
        performSegue(withIdentifier: "Sign Up", sender: signUp)
    }

}

