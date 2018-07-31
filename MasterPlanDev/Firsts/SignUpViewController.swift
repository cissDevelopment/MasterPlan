//
//  LoginViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let spacing: Int = 20 // Spacing of the text fields
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "SIGN UP"
        label.font = UIFont(name: "Avenir-Medium", size: 50)
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let firstName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First name"
        textField.font = UIFont(name: "Avenir-Light", size: 16)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let lastName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Last name"
        textField.font = UIFont(name: "Avenir-Light", size: 16)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let email: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.font = UIFont(name: "Avenir-Light", size: 16)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        textField.autocapitalizationType = .none
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let password: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont(name: "Avenir-Light", size: 16)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 5
        textField.autocapitalizationType = .none
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let join: UIButton = {
        let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 20)
        
        button.setAttributedTitle(NSAttributedString(string: "JOIN!", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = mainBlue
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(joinAction(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    let alreadyHaveAnAccount: UIButton = {
        let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 16)
        
        button.setAttributedTitle(NSAttributedString(string: "already have an account?", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(segueToLoginViewController), for: .touchUpInside)
        
        return button
    }()
    
    override func viewWillAppear(_ animated: Bool) { // Show keyboard automatically
        super.viewWillAppear(animated)
        firstName.becomeFirstResponder()
    }

    override func viewDidLoad() { // Show UI
        super.viewDidLoad()
        view.backgroundColor = mainBlue
        
        view.addSubview(titleLabel)
        view.addSubview(firstName)
        view.addSubview(lastName)
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(join)
        view.addSubview(alreadyHaveAnAccount)
        
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        firstName.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        firstName.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        firstName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        firstName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        lastName.topAnchor.constraint(equalTo: firstName.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        lastName.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        lastName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        lastName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        email.topAnchor.constraint(equalTo: lastName.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        email.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        email.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        email.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        password.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        password.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        join.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        join.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 40).isActive = true
        join.widthAnchor.constraint(equalToConstant: 200).isActive = true
        join.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        alreadyHaveAnAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        alreadyHaveAnAccount.topAnchor.constraint(equalTo: join.bottomAnchor, constant: 20).isActive = true
        
    }
    
    @objc func joinAction(sender: UIButton!) {
        if (firstName.text?.isEmpty)! || (lastName.text?.isEmpty)! || (email.text?.isEmpty)! || (password.text?.isEmpty)! {
            createAlert(title: "Please fill out all  information.", message: "", button: "Okay")
        } else if !(firstName.text?.isEmpty)! && !(lastName.text?.isEmpty)! && !(email.text?.isEmpty)! && ((password.text!).count < 8) {
            createAlert(title: "Password must contain at least eight characters.", message: "", button: "Okay")
        } else {segueToTabBarViewController()}
    }
    
    @objc func segueToLoginViewController() {
        let page = LoginViewController()
        present(page, animated: true, completion: nil)
    }
    
    @objc func segueToTabBarViewController() {
        let page = TabBarViewController()
        present(page, animated: true, completion: nil)
    }
    
    func createAlert (title: String, message: String, button: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: button, style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
