//
//  CustomHeaderView.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/8/2.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {
    
    var back = UIButton()
    var titleLabel = UILabel()
    
    init(frame: CGRect, title: String) {
        self.titleLabel.text = title.uppercased()
        super.init(frame: frame)
        
        setUpView()
    }
    
    func setUpView() {
        self.backgroundColor = mainBlue
        
        back.setAttributedTitle(NSAttributedString(string: "", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        back.titleLabel?.textColor = .white
        back.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(back)
        
        titleLabel.text = "Subjects Notified"
        titleLabel.font = UIFont(name: "Avenir-Black", size: 20)
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleLabel)
        
        titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        back.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
