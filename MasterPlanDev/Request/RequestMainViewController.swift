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
        
        return scrollView
        
    }()
    
    
    let tutorrequest: UILabel = {
        let label = UILabel()
        label.shadowColor = .black
        label.backgroundColor = secondaryBlue
        label.text = "        Tutor Request Page"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor  = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:30)
        
        return label
    }()

    let subjectchoice : UIPickerView =  {
        let PickerView = UIPickerView()
        
        PickerView.translatesAutoresizingMaskIntoConstraints = false
        PickerView.backgroundColor = white
        
        return PickerView
        
    }()
    
    
    let servicename: UITextView = {
        let textView = UITextView(frame: CGRect(x:20.0, y:90.0, width:250.0, height:100.0))
        textView.text = "Name of the Service"
        textView.textColor = white
        textView.backgroundColor = lightYellow
        textView.allowsEditingTextAttributes = true
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
        label.text = "Subject"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.addSubview(view1)
        view.addSubview(tutorrequest)

        view1.isHidden = false
        
        
        tutorrequest.topAnchor.constraint(equalTo: view.topAnchor, constant:80).isActive = true
        tutorrequest.bottomAnchor.constraint(equalTo: view1.topAnchor).isActive = true
        tutorrequest.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tutorrequest.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.topAnchor.constraint(equalTo: tutorrequest.bottomAnchor).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        

    
        
        view1.backgroundColor = lightBlue
        view1.addSubview(profilepic)
        view1.addSubview(changepicuniversal)
        view1.addSubview(servicename)
        view1.addSubview(_label)
        view1.addSubview(anonymous)
        view1.addSubview(request)
        view1.addSubview(subjectlabel)
        view1.addSubview(subjectchoice)
        view1.addSubview(__label)
        view1.addSubview(chapterlabel)
 
        
        profilepic.topAnchor.constraint(equalTo: view1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        changepicuniversal.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepicuniversal.centerYAnchor.constraint(equalTo: profilepic.centerYAnchor).isActive = true
        
        servicename.topAnchor.constraint(equalTo: view1.topAnchor, constant:50).isActive = true
        servicename.leftAnchor.constraint(equalTo: profilepic.rightAnchor, constant:20).isActive = true
        
        _label.topAnchor.constraint(equalTo: changepicuniversal.bottomAnchor, constant:-10).isActive = true
        _label.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        _label.rightAnchor.constraint(equalTo: view1.rightAnchor, constant:20).isActive = true
        
        anonymous.leftAnchor.constraint(equalTo: changepicuniversal.rightAnchor, constant:30).isActive = true
        anonymous.topAnchor.constraint(equalTo: view1.topAnchor, constant:10).isActive = true
        
        request.leftAnchor.constraint(equalTo: changepicuniversal.rightAnchor, constant:30).isActive = true
        request.topAnchor.constraint(equalTo: anonymous.topAnchor, constant:50).isActive = true
        
        subjectlabel.topAnchor.constraint(equalTo: _label.bottomAnchor, constant: -5).isActive = true
        subjectlabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        subjectchoice.topAnchor.constraint(equalTo: _label.bottomAnchor, constant: 20).isActive = true
        subjectchoice.leftAnchor.constraint(equalTo: subjectlabel.rightAnchor, constant: -20).isActive = true
        subjectchoice.bottomAnchor.constraint(equalTo: subjectchoice.topAnchor, constant:30).isActive = true
        subjectchoice.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -20).isActive = true
        
        __label.topAnchor.constraint(equalTo: subjectlabel.bottomAnchor, constant: -40).isActive = true
        __label.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        __label.rightAnchor.constraint(equalTo: view1.rightAnchor, constant:20).isActive = true
        
        chapterlabel.topAnchor.constraint(equalTo: __label.bottomAnchor, constant:-5 ).isActive = true
        chapterlabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant:20).isActive = true
        
    }
    

    
    
    
    
    
    
    
    
}
