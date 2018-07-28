//
//  UserMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class UserMainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagepicker = UIImagePickerController()
    
    
    
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
    
    
    let view2: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let view1 : UIView = {
        let view = UIView()
        
        return view
        
    }()
    
    let view3 :  UIView = {
        let view = UIView()
        
        return view
        
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
        let image = UIImageView(image: #imageLiteral(resourceName: "darkblue"))
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
        image1.addTarget(self, action: #selector(changepicAction(sender:)), for: .touchUpInside)
        
        
        return image1
    }()
    
    
    
    let userSegmentedControl: UISegmentedControl = {
        let userItems = ["Stats", "Current", "Settings"]
        let segmentedControl = UISegmentedControl(items: userItems)
        
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        return segmentedControl
        
    }()
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(userSegmentedControl)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        
        userSegmentedControl.addUnderlineForSelectedSegment()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        view1.topAnchor.constraint(equalTo: userSegmentedControl.bottomAnchor).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        view1.backgroundColor = lightBlue
        view1.addSubview(profilepic)
        view1.addSubview(changepic)
        view1.addSubview(firstname)
        view1.addSubview(lastname)
        profilepic.topAnchor.constraint(equalTo: view1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        changepic.topAnchor.constraint(equalTo: view1.topAnchor, constant: 35).isActive = true
        changepic.leftAnchor.constraint(equalTo:view1.leftAnchor, constant: 35).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: view1.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
    }
    
    
    
    
    
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
        userSegmentedControl.changeUnderlinePosition()
    }
    
    
    private func setupLayoutview1(){
        userSegmentedControl.changeUnderlinePosition()
        view1.backgroundColor = lightBlue
        
        
        view1.addSubview(profilepic)
        view1.addSubview(changepic)
        view1.addSubview(firstname)
        view1.addSubview(lastname)
        profilepic.topAnchor.constraint(equalTo: view1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        changepic.topAnchor.constraint(equalTo: view1.topAnchor, constant: 35).isActive = true
        changepic.leftAnchor.constraint(equalTo:view1.leftAnchor, constant: 35).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: view1.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
    }
    
    private func setupLayoutView2(){
        
        
        
    }
    
    
    private func setupLayoutView3(){
        
        
    }
    
    
    @objc func changepicAction (sender: UIButton!) {
        print ("something!")
        imagepicker.delegate = self
        imagepicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        self.present(imagepicker, animated:true, completion:nil)
        
        
        
    }
    
    func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]){
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        changepic.setBackgroundImage(image, for: UIControlState.normal)
        dismiss(animated: true, completion: nil)
    }
    
    
    private func updateView() {
        
        if userSegmentedControl.selectedSegmentIndex == 0 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            
            setupLayoutview1()
            
        } else if userSegmentedControl.selectedSegmentIndex == 1 {
            userSegmentedControl.changeUnderlinePosition()
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
            print("view 2!")
            setupLayoutView2()
            
            
            
            
        } else {
            userSegmentedControl.changeUnderlinePosition()
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            print("view 3!")
            setupLayoutView3()
        }
    }
    
    
    
    
}
