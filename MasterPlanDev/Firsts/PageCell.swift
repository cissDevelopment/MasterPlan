//
//  PageCell.swift
//  MasterPlanDev
//
//  Created by Joshua Shou on 8/13/18.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let userImageView : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "User"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    let backButton : UIButton = {
        
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: "Back", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        button.titleLabel?.textColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
       // button.addTarget(self, action: #selector(seguetoBarViewController), for: .touchUpInside)
        
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
        setupLayout()

        
        
    }
    
    private func setupLayout()
    {
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        addSubview(backButton)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
        topImageContainerView.addSubview(userImageView)
        userImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        userImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        userImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor).isActive = true
        
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        backButton.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant:50).isActive = true
        
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}



