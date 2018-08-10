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

let changepicuniversal: UIImageView = {
    let image1 = UIImageView()
    image1.backgroundColor = lightYellow
    image1.image = profilepicture.image
    image1.layer.borderWidth = 0
    image1.layer.masksToBounds = false
    image1.layer.borderColor = UIColor.black.cgColor
    image1.layer.cornerRadius = 40
    image1.clipsToBounds = true
    image1.translatesAutoresizingMaskIntoConstraints = false
    image1.widthAnchor.constraint(equalToConstant: 80).isActive = true
    image1.heightAnchor.constraint(equalToConstant: 80).isActive = true
    
    
    return image1
}()

class RequestMainViewController: UIViewController {
    


    let anonymous: UILabel = {
        let label = UILabel()
        label.text = "Anonymous"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
    }()
    
    
    let request : UILabel = {
        let label = UILabel()
        label.text = "Request"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
    }()
    
    
    let view1 : UIView = {
        let view = UIView()
        
        return view
    }()
    
    let scrollView1 : UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.alwaysBounceVertical = true
        scrollView.alwaysBounceHorizontal = false
        scrollView.showsHorizontalScrollIndicator = false

        return scrollView
        
    }()
    
    
    let tutorRequest: UIView = {
        let view = UIView()
        view.backgroundColor = secondaryBlue
        let label = UILabel()
        label.backgroundColor = secondaryBlue
        label.text = "Tutor Request"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor  = .white
        label.font = UIFont(name: "Avenir-Medium", size: 30)
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let subjectDisclosure: UIButton = {
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: ">", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        button.titleLabel?.textColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(segueToSubjectsViewController), for: .touchUpInside)
        
        return button
    }()
    
    let servicename: UITextView = {
        let textView = UITextView(frame: CGRect(x:20.0, y:90.0, width:250.0, height:100.0))
        textView.text = "Name of the Service"
        textView.textColor = white
        textView.backgroundColor = lightYellow
  //      textView.allowsEditingTextAttributes = true
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = true
       return textView
    }()
    
    let _label: UILabel = {
        let label = UILabel()
        label.text = "_______________"
        label.textColor = white
        label.font = UIFont.init(name: "Avenir-Heavy", size : 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let __label: UILabel = {
        let label = UILabel()
        label.text = "_______________"
        label.textColor = white
        label.font = UIFont.init(name: "Avenir-Heavy", size : 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let ___label: UILabel = {
        let label = UILabel()
        label.text = "_______________"
        label.textColor = white
        label.font = UIFont.init(name: "Avenir-Heavy", size : 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let Goallabel: UILabel = {
        let label = UILabel()
        label.text = "Goal"
        label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
        
        return label
    }()
    
    let profilepic: UIImageView  = {
        let image = UIImageView()
        image.backgroundColor = mainBlue
        image.layer.borderWidth = 0
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return image
    }()
    
    let subjectlabel: UILabel = {
        let label = UILabel()
        label.text = "Subject: "
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
    }()
    
    let chosenSubjectLabel : UILabel = {
        let label = UILabel()
        
        label.text = ""
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Avenir-Medium", size: 30)
        label.textColor = .white
        
        return label
    }()
    
    let chapterlabel: UILabel = {
        let label = UILabel()
        label.text = "Chapter"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
    }()
    
    let datelabel: UILabel = {
        let label = UILabel()
        label.text = "Date:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size:20)
        label.textColor = .white
        return label
    }()
    
    let startingtime: UILabel = {
        let label = UILabel()
        label.text = "Start Time:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size:20)
        label.textColor = .white
        return label
    }()
    
    let estimatedlength: UILabel = {
        let label = UILabel()
        label.text = "Length:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size:20)
        label.textColor = .white
        return label
    }()
    
    let detailslabel: UILabel = {
        let label = UILabel()
        label.text = "Details"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 35)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        
        return label
    }()
    
    let optionallabel: UILabel = {
        
        let label = UILabel()
        label.text = "(optional)"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Medium", size : 30)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        
        return label
    }()
    
    let detailsDescription: UITextView = {
        let textView = UITextView()
        textView.text = "Optional description here such as range, level of comprehension, materials, etc"
        textView.textColor = .white
        textView.font = UIFont(name: "Avenir-Medium", size: 15)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .clear
        textView.isEditable = true
        return textView
    }()
    
    let submit : UIButton = {
        let button = UIButton()
        
        button.backgroundColor = mainBlue
        button.setAttributedTitle(NSAttributedString(string: "Submit!", attributes: [.font : UIFont(name: "Avenir-Medium", size: 20)!]), for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(submitAction), for: .touchUpInside)
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.addSubview(scrollView1)
        view.addSubview(tutorRequest)

        scrollView1.isHidden = false
        scrollView1.contentSize = CGSize(width: view.frame.width, height: 700)
        
        scrollView1.topAnchor.constraint(equalTo: tutorRequest.bottomAnchor).isActive = true
        scrollView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        scrollView1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        tutorRequest.topAnchor.constraint(equalTo: view.topAnchor, constant:80).isActive = true
        tutorRequest.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        tutorRequest.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tutorRequest.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        scrollView1.translatesAutoresizingMaskIntoConstraints = false
        scrollView1.topAnchor.constraint(equalTo: tutorRequest.bottomAnchor).isActive = true
        scrollView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        scrollView1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        scrollView1.backgroundColor = lightBlue
        scrollView1.addSubview(profilepic)
        scrollView1.addSubview(changepicuniversal)
        scrollView1.addSubview(servicename)
        scrollView1.addSubview(_label)
        scrollView1.addSubview(anonymous)
        scrollView1.addSubview(request)
        scrollView1.addSubview(subjectlabel)
        scrollView1.addSubview(chosenSubjectLabel)
        scrollView1.addSubview(subjectDisclosure)
        scrollView1.addSubview(__label)
        scrollView1.addSubview(chapterlabel)
        scrollView1.addSubview(datelabel)
        scrollView1.addSubview(startingtime)
        scrollView1.addSubview(estimatedlength)
        scrollView1.addSubview(___label)
        scrollView1.addSubview(detailslabel)
        scrollView1.addSubview(optionallabel)
        scrollView1.addSubview(detailsDescription)
        scrollView1.addSubview(submit)
 
        
        profilepic.topAnchor.constraint(equalTo: scrollView1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant: 20).isActive = true
        
        changepicuniversal.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepicuniversal.centerYAnchor.constraint(equalTo: profilepic.centerYAnchor).isActive = true
        
        servicename.topAnchor.constraint(equalTo: scrollView1.topAnchor, constant:50).isActive = true
        servicename.leftAnchor.constraint(equalTo: profilepic.rightAnchor, constant:20).isActive = true
        
        _label.topAnchor.constraint(equalTo: changepicuniversal.bottomAnchor, constant:-10).isActive = true
        _label.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:20).isActive = true
        _label.rightAnchor.constraint(equalTo: scrollView1.rightAnchor, constant:-20).isActive = true
        
        anonymous.leftAnchor.constraint(equalTo: changepicuniversal.rightAnchor, constant:30).isActive = true
        anonymous.topAnchor.constraint(equalTo: scrollView1.topAnchor, constant:10).isActive = true
        
        request.leftAnchor.constraint(equalTo: changepicuniversal.rightAnchor, constant:30).isActive = true
        request.topAnchor.constraint(equalTo: anonymous.topAnchor, constant:50).isActive = true
        
        subjectlabel.topAnchor.constraint(equalTo: _label.bottomAnchor, constant: -5).isActive = true
        subjectlabel.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant: 20).isActive = true
        
        chosenSubjectLabel.leftAnchor.constraint(equalTo: subjectlabel.rightAnchor).isActive = true
        chosenSubjectLabel.rightAnchor.constraint(equalTo: subjectDisclosure.leftAnchor).isActive = true
        chosenSubjectLabel.centerYAnchor.constraint(equalTo: subjectlabel.centerYAnchor).isActive = true
        
        subjectDisclosure.centerYAnchor.constraint(equalTo: subjectlabel.centerYAnchor).isActive = true
        subjectDisclosure.rightAnchor.constraint(equalTo: scrollView1.rightAnchor, constant: -20).isActive = true
        
        __label.topAnchor.constraint(equalTo: subjectlabel.bottomAnchor, constant: -40).isActive = true
        __label.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:20).isActive = true
        __label.rightAnchor.constraint(equalTo: scrollView1.rightAnchor, constant:-20).isActive = true
        
        chapterlabel.topAnchor.constraint(equalTo: __label.bottomAnchor, constant:-5 ).isActive = true
        chapterlabel.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:20).isActive = true
        
        datelabel.topAnchor.constraint(equalTo: __label.bottomAnchor, constant:0).isActive = true
        datelabel.leftAnchor.constraint(equalTo: scrollView1.leftAnchor , constant:165).isActive = true
        
        startingtime.topAnchor.constraint(equalTo: datelabel.bottomAnchor, constant: 0).isActive = true
        startingtime.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:165).isActive = true
        
        estimatedlength.topAnchor.constraint(equalTo: startingtime.bottomAnchor).isActive = true
        estimatedlength.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:165).isActive = true
        
        ___label.topAnchor.constraint(equalTo: estimatedlength.bottomAnchor, constant: -40).isActive = true
        ___label.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:20).isActive = true
        ___label.rightAnchor.constraint(equalTo: scrollView1.rightAnchor, constant:-20).isActive = true
        
        detailslabel.topAnchor.constraint(equalTo: ___label.bottomAnchor, constant: 10).isActive = true
        detailslabel.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:20).isActive = true
        
        optionallabel.topAnchor.constraint(equalTo: detailslabel.bottomAnchor).isActive = true
        optionallabel.leftAnchor.constraint(equalTo: detailslabel.leftAnchor).isActive = true
        
        detailsDescription.topAnchor.constraint(equalTo: detailslabel.topAnchor).isActive = true
        detailsDescription.rightAnchor.constraint(equalTo: scrollView1.rightAnchor, constant: -20).isActive = true
        detailsDescription.bottomAnchor.constraint(equalTo: optionallabel.bottomAnchor).isActive = true
        detailsDescription.widthAnchor.constraint(equalToConstant: 225).isActive = true
        
        submit.topAnchor.constraint(equalTo: optionallabel.bottomAnchor, constant: 30).isActive = true
        submit.leftAnchor.constraint(equalTo: scrollView1.leftAnchor, constant:20).isActive = true
        submit.rightAnchor.constraint(equalTo: scrollView1.rightAnchor, constant:-20).isActive = true
        
    }
    

    
    @objc func submitAction() {
        submit.isHighlighted = true
        detailsDescription.text = "Optional description here such as range, level of comprehension, materials, etc"
        let page = TabBarViewController()
        present(page, animated: true, completion : nil)
        
        
        
        
        
    }
    
    @objc func segueToSubjectsViewController() {
        let page = SubjectsViewController()
        let transition = CATransition()
        transition.duration = subjectsTime
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        transition.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(page, animated: false, completion: nil)
    }
    
    
    
    
    
}
