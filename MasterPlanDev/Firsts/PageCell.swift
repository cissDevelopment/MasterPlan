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
        textView.backgroundColor = .black
        textView.isHidden = false
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
        
        addSubview(backButton)
        addSubview(introductionLabel)
        addSubview(descriptionTextView)
        addSubview(userImageView)


        introductionLabel.topAnchor.constraint(equalTo: topAnchor, constant:20).isActive = true
        introductionLabel.bottomAnchor.constraint(equalTo: topAnchor, constant:95).isActive = true
        introductionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        

        userImageView.topAnchor.constraint(equalTo: introductionLabel.bottomAnchor, constant: 10).isActive = true
        userImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 100).isActive = true
        userImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -100).isActive = true
        userImageView.bottomAnchor.constraint(equalTo: userImageView.topAnchor, constant: 354).isActive = true
        
        
        descriptionTextView.topAnchor.constraint(equalTo: userImageView.bottomAnchor, constant: 50).isActive = true
        
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        backButton.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant:50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



