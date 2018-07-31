//
//  LoginViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit
import Foundation
import GameplayKit
import MessageUI

class LoginViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "LOGIN"
        label.font = UIFont(name: "Avenir-Medium", size: 50)
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
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
    
    let signIn: UIButton = {
       let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 20)
        
        button.setAttributedTitle(NSAttributedString(string: "SIGN IN", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = mainBlue
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(segueToTabBarViewController), for: .touchUpInside)
        
        return button
    }()
    
    let createANewAccount: UIButton = {
        let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 16)
        
        button.setAttributedTitle(NSAttributedString(string: "create a new account", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(segueToSignUpViewController), for: .touchUpInside)
        
        return button
    }()
    
    let forgotPassword: UIButton = {
        let button = UIButton()
        let font = UIFont(name: "Avenir-Medium", size: 16)
        
        button.setAttributedTitle(NSAttributedString(string: "forgot password?", attributes: [.font : font!]), for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(forgotPasswordAction(Sender:)), for: .touchUpInside)
        
        return button
    }()
    
    override func viewWillAppear(_ animated: Bool) { // Show keyboard automatically
        super.viewWillAppear(animated)
        email.becomeFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = mainBlue
        
        view.addSubview(titleLabel)
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(signIn)
        view.addSubview(createANewAccount)
        view.addSubview(forgotPassword)
        
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        email.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        email.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        email.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        email.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 50).isActive = true
        password.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        password.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        password.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        signIn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signIn.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 40).isActive = true
        signIn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        signIn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        createANewAccount.topAnchor.constraint(equalTo: signIn.bottomAnchor, constant: 20).isActive = true
        createANewAccount.leftAnchor.constraint(equalTo: titleLabel.leftAnchor).isActive = true
        
        forgotPassword.topAnchor.constraint(equalTo: createANewAccount.topAnchor).isActive = true
        forgotPassword.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
    }
    
    @objc func segueToTabBarViewController() {
        let page = TabBarViewController()
        present(page, animated: true, completion: nil)
    }
    
    @objc func segueToSignUpViewController() {
        let page = SignUpViewController()
        present(page, animated: true, completion: nil)
    }
    
    @objc func forgotPasswordAction (Sender: UIButton!) {
        if email.text == "" {
            createAlert(title: "Please insert your \ne-mail address.", message: "", button: "Okay")
        } else {
            sendEmail()
            createAlert(title: "Password Generated", message: "A generated password was sent to your inbox.", button: "Got it!")
        }
    }
    
    
    // Forgot password functions
    
    func randomPasswordGenerator() -> String { // Generate password of 8 characters
        let sourceString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        var sequenceOfCharacters: [Character] = []
        for item in sourceString {
            sequenceOfCharacters.append(item)
        }
        var index = 1
        let passwordLength = 8
        var generatedPassword: [Character] = []
        var randomPositionPicker: Int
        while index <= passwordLength {
            randomPositionPicker = GKRandomSource.sharedRandom().nextInt(upperBound: sequenceOfCharacters.count)
            generatedPassword.append(sequenceOfCharacters[randomPositionPicker])
            index += 1
        }
        let randomPassword = String(generatedPassword)
        return randomPassword
    }
    
    func sendEmail() { // Send password to user inbox
        let mailComposeViewController = passwordMail()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            createAlert(title: "E-mail Error", message: "Sorry, the generated password could not be sent to your mail inbox.", button: "Okay")
        }
    }
    
    func passwordMail() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self as? MFMailComposeViewControllerDelegate
        
        mailComposerVC.setToRecipients([(email.text)!])
        mailComposerVC.setSubject("Generated Password")
        mailComposerVC.setMessageBody("Your generated password is: " + randomPasswordGenerator(), isHTML: false)
        
        return mailComposerVC
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
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
