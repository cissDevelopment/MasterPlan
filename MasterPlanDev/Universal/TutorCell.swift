//
//  ServiceCell.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/26.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class TutorCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let name: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.backgroundColor = .clear
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 5
        let attributes: [NSAttributedStringKey : Any] = [
            .font : UIFont(name: "Avenir-Heavy", size: 20)!,
            .foregroundColor : UIColor.white,
            .paragraphStyle : style
        ]
        textView.attributedText = NSAttributedString(string: "Name of the Service", attributes: attributes)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        return textView
    }()
    
    let profile: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 40
        imageView.backgroundColor = .red
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let organization: UILabel = {
        let label = UILabel()
        label.text = "Organization"
        label.font = UIFont(name: "Avenir-Medium", size: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let dates: UILabel = {
        let label = UILabel()
        label.text = "Dates"
        label.font = UIFont(name: "Avenir-Medium", size: 16)
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let people: UILabel = {
        let label = UILabel()
        label.text = "People"
        label.font = UIFont(name: "Avenir-Medium", size: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let rewards: UILabel = {
        let label = UILabel()
        label.text = "Rewards"
        label.font = UIFont(name: "Avenir-Medium", size: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    func setupViews() {
        addSubview(name)
        addSubview(profile)
        addSubview(organization)
        addSubview(dates)
        addSubview(people)
        addSubview(rewards)
        backgroundColor = lightBlue
        
        profile.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        profile.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        profile.widthAnchor.constraint(equalToConstant: 80).isActive = true
        profile.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        requestor.topAnchor.constraint(equalTo: profile.topAnchor).isActive = true
        requestor.leftAnchor.constraint(equalTo: profile.rightAnchor, constant: 15).isActive = true
        
        name.topAnchor.constraint(equalTo: requestor.bottomAnchor, constant: barSpacing).isActive = true
        name.leftAnchor.constraint(equalTo: requestor.leftAnchor).isActive = true
        name.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        name.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        organization.leftAnchor.constraint(equalTo: profile.leftAnchor).isActive = true
        organization.topAnchor.constraint(equalTo: name.bottomAnchor, constant: barSpacing).isActive = true
        
        dates.leftAnchor.constraint(equalTo: profile.leftAnchor).isActive = true
        dates.topAnchor.constraint(equalTo: organization.bottomAnchor, constant: barSpacing).isActive = true
        
        people.rightAnchor.constraint(equalTo: name.rightAnchor).isActive = true
        people.topAnchor.constraint(equalTo: organization.topAnchor).isActive = true
        
        rewards.rightAnchor.constraint(equalTo: name.rightAnchor).isActive = true
        rewards.topAnchor.constraint(equalTo: dates.topAnchor).isActive = true
        
    }

}
