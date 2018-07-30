//
//  UserSettingsViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class UserSettingsViewController: UIViewController {
    let firstname : UILabel = {
        let label = UILabel()
        label.text = "Joshua"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 50)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        
        return label
    }()
    
    
    
    let lastname : UILabel = {
        let label = UILabel()
        label.text = "Shou"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor  = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:50)
        label.sizeToFit()
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        
        return label
    }()
    
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
    
    let changepic: UIButton = {
        let image1 = UIButton()
        image1.backgroundColor = lightYellow
        image1.layer.borderWidth = 0
        image1.layer.masksToBounds = false
        image1.layer.borderColor = UIColor.black.cgColor
        image1.layer.cornerRadius = 60
        image1.clipsToBounds = true
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.widthAnchor.constraint(equalToConstant: 120).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 120).isActive = true
        //image1.addTarget(self, action: #selector(changepicAction(sender:)), for: .touchUpInside)
        
        
        return image1
    }()
    let primaryOrganization : UILabel = {
        
        let label = UILabel()
        
        label.text = "Primary organization: "
        
        label.textColor = .white
        
        label.font = settingsElementFont
        
        label.textAlignment = .left
        
        label.sizeToFit()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let primaryOrganizationDisclosure: UIButton = {
        
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: ">", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        
        button.titleLabel?.textColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    let affiliatedOrganizations : UILabel = {
        
        let label = UILabel()
        
        label.text = "Affiliated organizations: "
        
        label.textColor = .white
        
        label.font = settingsElementFont
        
        label.textAlignment = .left
        
        label.sizeToFit()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let affiliatedOrganizationsDisclosure: UIButton = {
        
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: ">", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        
        button.titleLabel?.textColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    let phoneNumber : UILabel = {
        
        let label = UILabel()
        
        label.text = "Phone number: "
        
        label.textColor = .white
        
        label.font = settingsElementFont
        
        label.textAlignment = .left
        
        label.sizeToFit()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let emailNotification : UILabel = {
        
        let label = UILabel()
        
        label.text = "Email notification: "
        
        label.textColor = .white
        
        label.font = settingsElementFont
        
        label.textAlignment = .left
        
        label.sizeToFit()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let emailNotificationSwitch : UISwitch = {
        
        let mySwitch = UISwitch()
        
        mySwitch.isOn = true
        
        mySwitch.tintColor = .white
        
        mySwitch.onTintColor = mainBlue
        
        mySwitch.thumbTintColor = lightYellow
        
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        
        return mySwitch
        
    }()
    
    let enableNotification : UILabel = {
        
        let label = UILabel()
        
        label.text = "Enable notification: "
        
        label.textColor = .white
        
        label.font = settingsElementFont
        
        label.textAlignment = .left
        
        label.sizeToFit()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let enableNotificationSwitch : UISwitch = {
        
        let mySwitch = UISwitch()
        
        mySwitch.isOn = true
        
        mySwitch.tintColor = .white
        
        mySwitch.onTintColor = mainBlue
        
        mySwitch.thumbTintColor = lightYellow
        
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        
        return mySwitch
        
    }()
    
    let hideRanking : UILabel = {
        
        let label = UILabel()
        
        label.text = "Hide ranking: "
        
        label.textColor = .white
        
        label.font = settingsElementFont
        
        label.textAlignment = .left
        
        label.sizeToFit()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let hideRankingSwitch : UISwitch = {
        
        let mySwitch = UISwitch()
        
        mySwitch.isOn = false
        
        mySwitch.tintColor = .white
        
        mySwitch.onTintColor = mainBlue
        
        mySwitch.thumbTintColor = lightYellow
        
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        
        return mySwitch
        
    }()
    
    let cancel : UIButton = {
        
        let button = UIButton()
        
        button.backgroundColor = mainBlue
        
        button.setAttributedTitle(NSAttributedString(string: "Cancel", attributes: [.font : UIFont(name: "Avenir-Medium", size: 20)!]), for: .normal)
        
        button.titleLabel?.textColor = .white
        
        button.layer.cornerRadius = 20
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    let save : UIButton = {
        
        let button = UIButton()
        
        button.backgroundColor = mainBlue
        
        button.setAttributedTitle(NSAttributedString(string: "Save", attributes: [.font : UIFont(name: "Avenir-Medium", size: 20)!]), for: .normal)
        
        button.titleLabel?.textColor = .white
        
        button.layer.cornerRadius = 20
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    let signOut : UIButton = {
        
        let button = UIButton()
        
        button.backgroundColor = mainBlue
        
        button.setAttributedTitle(NSAttributedString(string: "Sign Out", attributes: [.font : UIFont(name: "Avenir-Medium", size: 20)!]), for: .normal)
        
        button.titleLabel?.textColor = .white
        
        button.layer.cornerRadius = 20
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    let scrollView : UIScrollView = {
        
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
        
    }()
    
    let spacing : CGFloat = 30
    
    private func setupLayoutView3(){
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(profilepic)
        
        scrollView.addSubview(changepic)
        
        scrollView.addSubview(firstname)
        
        scrollView.addSubview(lastname)
        
        scrollView.addSubview(primaryOrganization)
        
        scrollView.addSubview(primaryOrganizationDisclosure)
        
        scrollView.addSubview(affiliatedOrganizations)
        
        scrollView.addSubview(affiliatedOrganizationsDisclosure)
        
        scrollView.addSubview(phoneNumber)
        
        scrollView.addSubview(emailNotification)
        
        scrollView.addSubview(emailNotificationSwitch)
        
        scrollView.addSubview(enableNotification)
        
        scrollView.addSubview(enableNotificationSwitch)
        
        scrollView.addSubview(hideRanking)
        
        scrollView.addSubview(hideRankingSwitch)
        
        scrollView.addSubview(cancel)
        
        scrollView.addSubview(save)
        
        scrollView.addSubview(signOut)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 800)
        
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        profilepic.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:20).isActive = true
        
        profilepic.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        
        changepic.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive =
            
        true
        
        changepic.centerYAnchor.constraint(equalTo:profilepic.centerYAnchor).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        
        firstname.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
        primaryOrganization.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        
        primaryOrganization.topAnchor.constraint(equalTo: profilepic.bottomAnchor, constant: spacing).isActive = true
        
        primaryOrganizationDisclosure.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        primaryOrganizationDisclosure.centerYAnchor.constraint(equalTo: primaryOrganization.centerYAnchor).isActive = true
        
        affiliatedOrganizations.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        
        affiliatedOrganizations.topAnchor.constraint(equalTo: primaryOrganization.bottomAnchor, constant: spacing).isActive = true
        
        affiliatedOrganizationsDisclosure.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        affiliatedOrganizationsDisclosure.centerYAnchor.constraint(equalTo: affiliatedOrganizations.centerYAnchor).isActive = true
        
        phoneNumber.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        
        phoneNumber.topAnchor.constraint(equalTo: affiliatedOrganizations.bottomAnchor, constant: spacing).isActive = true
        
        emailNotification.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        
        emailNotification.topAnchor.constraint(equalTo: phoneNumber.bottomAnchor, constant: spacing).isActive = true
        
        emailNotificationSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        emailNotificationSwitch.centerYAnchor.constraint(equalTo: emailNotification.centerYAnchor).isActive = true
        
        emailNotificationSwitch.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
        enableNotification.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        
        enableNotification.topAnchor.constraint(equalTo: emailNotification.bottomAnchor, constant: spacing).isActive = true
        
        enableNotificationSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        enableNotificationSwitch.centerYAnchor.constraint(equalTo: enableNotification.centerYAnchor).isActive = true
        
        enableNotificationSwitch.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
        hideRanking.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        
        hideRanking.topAnchor.constraint(equalTo: enableNotification.bottomAnchor, constant: spacing).isActive = true
        
        hideRankingSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        hideRankingSwitch.centerYAnchor.constraint(equalTo: hideRanking.centerYAnchor).isActive = true
        
        hideRankingSwitch.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
        cancel.topAnchor.constraint(equalTo: hideRanking.bottomAnchor, constant: spacing).isActive = true
        
        cancel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        cancel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        cancel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        save.topAnchor.constraint(equalTo: hideRanking.bottomAnchor, constant: spacing).isActive = true
        
        save.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        save.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        save.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        signOut.topAnchor.constraint(equalTo: cancel.bottomAnchor, constant: spacing).isActive = true
        
        signOut.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        signOut.leftAnchor.constraint(equalTo: cancel.leftAnchor).isActive = true
        
        signOut.rightAnchor.constraint(equalTo: save.rightAnchor).isActive = true
        
        //view.backgroundColor = lightBlue
        
        
        
    }
    
    
    @objc func changepicAction (sender: UIButton!) {
        print ("something!")
//        imagepicker.delegate = self
//        imagepicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
//
//        self.present(imagepicker, animated:true, completion:nil)
        
        
        
    }
    
    func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]){
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        changepic.setBackgroundImage(image, for: UIControlState.normal)
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // scrollView.backgroundColor = lightBlue
        view.addSubview(firstname)
        
        
       
    }

}
