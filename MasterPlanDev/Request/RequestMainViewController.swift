//
//  RequestMainViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

let containerViewRequest: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    
    return view
}()










class RequestMainViewController: UIViewController {
    
    
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
    
    let scrollView1 : UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
        
    }()
    
    let scrollView2 : UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
        
    }()
    
    let scrollView3 : UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
        
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
    
    let changepic: UIImageView = {
        let image1 = UIImageView()
        image1.image = profilepicture.image
        image1.layer.borderWidth = 0
        image1.layer.masksToBounds = false
        image1.layer.borderColor = UIColor.black.cgColor
        image1.layer.cornerRadius = 60
        image1.clipsToBounds = true
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.widthAnchor.constraint(equalToConstant: 120).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 120).isActive = true


        return image1
    }()
    
    let requestSegmentedControl: UISegmentedControl = {
        let requestItems = ["Single", "Multiple", "Tutor", "Drafts"]
        let segmentedControl = UISegmentedControl(items: requestItems)
                
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        return segmentedControl
        
    }()


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(requestSegmentedControl)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        
        view2.isHidden = true
        view3.isHidden = true
        view1.isHidden = false
        
        
        
        requestSegmentedControl.addUnderlineForSelectedSegment()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.topAnchor.constraint(equalTo: requestSegmentedControl.bottomAnchor).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.topAnchor.constraint(equalTo: requestSegmentedControl.bottomAnchor).isActive = true
        view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        view3.translatesAutoresizingMaskIntoConstraints = false
        view3.topAnchor.constraint(equalTo: requestSegmentedControl.bottomAnchor).isActive = true
        view3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view3.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        
        view1.backgroundColor = lightBlue
        view1.addSubview(profilepic)
        view1.addSubview(changepic)
        
        profilepic.topAnchor.constraint(equalTo: view1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        changepic.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepic.centerYAnchor.constraint(equalTo: profilepic.centerYAnchor).isActive = true
        
        
        
        
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
        requestSegmentedControl.changeUnderlinePosition()
    }
    
    private func updateView() {
        if requestSegmentedControl.selectedSegmentIndex == 0 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            setupLayoutview1()
        }
        else if requestSegmentedControl.selectedSegmentIndex == 1{
            requestSegmentedControl.changeUnderlinePosition()
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
            print("view 3!")
            setupLayoutView2()
            
        }
        else{
            requestSegmentedControl.changeUnderlinePosition()
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            setupLayoutView3()
            
        }
    }
    
    private func setupLayoutview1()
    {
        requestSegmentedControl.changeUnderlinePosition()
        
        scrollView1.backgroundColor = lightBlue
        
        view1.addSubview(scrollView1)
    }
    
    private func setupLayoutView2(){
        requestSegmentedControl.changeUnderlinePosition()
        
        scrollView2.backgroundColor = lightBlue
        
        view2.addSubview(scrollView2)
    }
    
    private func setupLayoutView3()
    {
        requestSegmentedControl.changeUnderlinePosition()
        
        scrollView3.backgroundColor = lightBlue
        
        view3.addSubview(scrollView3)
    }
    
    
    
    
    
}
