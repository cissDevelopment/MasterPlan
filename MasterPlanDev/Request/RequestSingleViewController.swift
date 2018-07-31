//
//  RequestSingleViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class RequestSingleViewController: UIViewController {
    
    let profilepic: UIImageView  = {
        let image = UIImageView()
        image.backgroundColor = mainBlue
        image.layer.borderWidth = 0
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = 75
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 50).isActive = true
        image.heightAnchor.constraint(equalToConstant: 50).isActive = true
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
        image1.widthAnchor.constraint(equalToConstant: 20).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 20).isActive = true

        
        return image1
    }()
    
    let viewSingle: UIView = {
        let view = UIView()
        
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.addSubview(view)
       // view.addSubview(containerViewRequest)
        view.addSubview(viewSingle)
        
        
        //viewSingle.topAnchor.constraint(equalTo: view.bottomAnchor, constant:120).isActive = true
        viewSingle.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        viewSingle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewSingle.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        viewSingle.backgroundColor = mainBlue
        
        profilepic.topAnchor.constraint(equalTo: viewSingle.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        changepic.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepic.centerYAnchor.constraint(equalTo: profilepic.centerYAnchor).isActive = true

        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    

}
