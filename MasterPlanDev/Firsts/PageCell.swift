//
//  PageCell.swift
//  MasterPlanDev
//
//  Created by Joshua Shou on 8/13/18.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let introductionLabel : UILabel = {
        
        let label = UILabel()
        label.text = "Introduction"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 50)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
    }()

    let descriptionTextView : UITextView = {
        let textView = UITextView()
        textView.textColor = .black
        textView.text = "filler"
        textView.font = UIFont(name: "Avenir-Medium", size: 15)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .white
        textView.isEditable = false
        return textView
    }()
    
    let userImageView : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "User"))
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
        
    }()
    
    let backButton : UIButton = {
        
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: "Back", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        button.titleLabel?.textColor = .black
        
        button.translatesAutoresizingMaskIntoConstraints = false
       // button.addTarget(self, action: #selector(seguetoBarViewController), for: .touchUpInside)
        button.backgroundColor = lightBlue
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = secondaryBlue
        setupLayout()

        
        
    }
    
    private func setupLayout()
    {
        
        let introview = UIView()
        addSubview(backButton)
        addSubview(introductionLabel)
        addSubview(descriptionTextView)
        addSubview(userImageView)
        addSubview(introview)
        introview.translatesAutoresizingMaskIntoConstraints = false
        
        introview.topAnchor.constraint(equalTo: topAnchor).isActive = true
        introview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        introview.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        introview.rightAnchor.constraint(equalTo: rightAnchor).isActive = true



        introductionLabel.topAnchor.constraint(equalTo: introview.topAnchor, constant:20).isActive = true
        introductionLabel.bottomAnchor.constraint(equalTo: introview.topAnchor, constant:95).isActive = true
        introductionLabel.centerXAnchor.constraint(equalTo: introview.centerXAnchor).isActive = true
        

        userImageView.topAnchor.constraint(equalTo: introductionLabel.bottomAnchor, constant: 10).isActive = true
        userImageView.leftAnchor.constraint(equalTo: introview.leftAnchor, constant: 100).isActive = true
        userImageView.rightAnchor.constraint(equalTo: introview.rightAnchor, constant: -100).isActive = true
        userImageView.bottomAnchor.constraint(equalTo: userImageView.topAnchor, constant: 354).isActive = true
        
        
        descriptionTextView.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 50).isActive = true
        
        descriptionTextView.leftAnchor.constraint(equalTo: introview.leftAnchor, constant: 50).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: introview.rightAnchor, constant:-50).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: introview.bottomAnchor)

//
//
        backButton.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant:20).isActive = true
        backButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        backButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        backButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -50).isActive = true

        
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}



