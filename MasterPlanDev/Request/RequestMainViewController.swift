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

class RequestMainViewController: UIViewController, UITextFieldDelegate {
    
    let myDatePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        // setting properties of the datePicker
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = UIColor.white
        datePicker.layer.cornerRadius = 5.0
        datePicker.layer.shadowOpacity = 0.5
        datePicker.minuteInterval = 15
        datePicker.minimumDate = Date()
        datePicker.isHidden = true
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()
    
    
    let toolBar : UIToolbar = {
        // ToolBar
        let tool = UIToolbar()
        tool.barStyle = .default
        tool.isTranslucent = true
        tool.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 0.5)
//        tool.sizeToFit()
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(RequestMainViewController.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(RequestMainViewController.cancelClick))
        tool.setItems([cancelButton, spaceButton, doneButton], animated: true)
        tool.isUserInteractionEnabled = true
        tool.isHidden = true
        tool.translatesAutoresizingMaskIntoConstraints = false
        return tool
    }()
    
    let lengthPicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        // setting properties of the datePicker
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = UIColor.white
        datePicker.layer.cornerRadius = 5.0
        datePicker.layer.shadowOpacity = 0.5
        datePicker.isHidden = true
        datePicker.translatesAutoresizingMaskIntoConstraints = false
//      Format is correct, unsure about functionality
        datePicker.datePickerMode = .countDownTimer
        datePicker.minuteInterval = 15
        return datePicker
    }()

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
    
    
    let tutorRequest: UIView = {
        let view = UIView()
        view.backgroundColor = secondaryBlue
        let label = UILabel()
        label.text = "Tutor Request"
        label.textColor  = .white
        label.font = UIFont(name: "Avenir-Heavy", size: 30)
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
        button.addTarget(self, action: #selector(segueToSubjectsTableViewController), for: .touchUpInside)
        
        return button
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
        label.text = "Date & Starting Time:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size:20)
        label.textColor = .white
        return label
    }()
    
    let datePlaceholder: UITextField = {
        let text = UITextField()
        text.placeholder = "dd/mm/yyyy"
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.init(name: "Avenir-Heavy", size: 20)
        text.textColor = .white
        return text
    }()
    
/*    let startingtime: UILabel = {
        let label = UILabel()
        label.text = "Start Time:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size:20)
        label.textColor = .white
        return label
    }()*/
    
    let estimatedlength: UILabel = {
        let label = UILabel()
        label.text = "Length:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size:20)
        label.textColor = .white
        return label
    }()
    
    let lengthPlaceholder: UITextField = {
        let text = UITextField()
        text.placeholder = "Estimated Duration"
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.init(name: "Avenir-Heavy", size: 16)
        text.textColor = .white
        return text
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
        
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        view.addSubview(view1)
        view.addSubview(tutorRequest)

        view1.isHidden = false
        
        
        tutorRequest.topAnchor.constraint(equalTo: view.topAnchor, constant:80).isActive = true
        tutorRequest.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        tutorRequest.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tutorRequest.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.topAnchor.constraint(equalTo: tutorRequest.bottomAnchor).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        

        // add an event called when value is changed.
//        myDatePicker.frame = CGRect(x: 0,y: view.frame.height - 130,width: view.frame.width,height: 130)

        myDatePicker.addTarget(self, action: #selector(onDidChangeDate(sender:)), for: .valueChanged)
        lengthPicker.addTarget(self, action: #selector(onDidChangeTime(sender:)), for: .valueChanged)
        
        // add DataPicker to the view
        self.view1.addSubview(myDatePicker)
        self.view1.addSubview(lengthPicker)
        
        // add toolBar to the view
        self.view1.addSubview(toolBar)
        
        
        self.datePlaceholder.delegate = self
        self.lengthPlaceholder.delegate = self

        datePlaceholder.addTarget(self, action: #selector(dateChanged), for: UIControlEvents.touchDown)
        lengthPlaceholder.addTarget(self, action: #selector(timeChanged), for: UIControlEvents.touchDown)

        view1.backgroundColor = lightBlue
        view1.addSubview(profilepic)
        view1.addSubview(changepicuniversal)
        view1.addSubview(servicename)
        view1.addSubview(_label)
        view1.addSubview(anonymous)
        view1.addSubview(request)
        view1.addSubview(subjectlabel)
        view1.addSubview(chosenSubjectLabel)
        view1.addSubview(subjectDisclosure)
        view1.addSubview(__label)
        view1.addSubview(chapterlabel)
        view1.addSubview(datelabel)
        view1.addSubview(datePlaceholder)
        view1.addSubview(estimatedlength)
        view1.addSubview(lengthPlaceholder)
        view1.addSubview(___label)
        view1.addSubview(detailslabel)
        view1.addSubview(optionallabel)
        view1.addSubview(detailsDescription)
        view1.addSubview(submit)
 
        
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
        
        chosenSubjectLabel.leftAnchor.constraint(equalTo: subjectlabel.rightAnchor).isActive = true
        chosenSubjectLabel.rightAnchor.constraint(equalTo: subjectDisclosure.leftAnchor).isActive = true
        chosenSubjectLabel.centerYAnchor.constraint(equalTo: subjectlabel.centerYAnchor).isActive = true
        
        subjectDisclosure.centerYAnchor.constraint(equalTo: subjectlabel.centerYAnchor).isActive = true
        subjectDisclosure.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -20).isActive = true
        
        __label.topAnchor.constraint(equalTo: subjectlabel.bottomAnchor, constant: -40).isActive = true
        __label.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        __label.rightAnchor.constraint(equalTo: view1.rightAnchor, constant:20).isActive = true
        
        chapterlabel.topAnchor.constraint(equalTo: __label.bottomAnchor, constant:-5 ).isActive = true
        chapterlabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant:20).isActive = true
        
        datelabel.topAnchor.constraint(equalTo: __label.bottomAnchor, constant:0).isActive = true
        datelabel.leftAnchor.constraint(equalTo: view.leftAnchor , constant:165).isActive = true
        
        datePlaceholder.topAnchor.constraint(equalTo: datelabel.bottomAnchor, constant: 0).isActive = true
        datePlaceholder.leftAnchor.constraint(equalTo: view.leftAnchor, constant:165).isActive = true
        
        estimatedlength.topAnchor.constraint(equalTo: datePlaceholder.bottomAnchor).isActive = true
        estimatedlength.leftAnchor.constraint(equalTo: view.leftAnchor, constant:165).isActive = true
        
        lengthPlaceholder.topAnchor.constraint(equalTo: estimatedlength.topAnchor, constant: 4).isActive = true
        lengthPlaceholder.leftAnchor.constraint(equalTo: estimatedlength.rightAnchor, constant: 5).isActive = true
        
        ___label.topAnchor.constraint(equalTo: estimatedlength.bottomAnchor, constant: -40).isActive = true
        ___label.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        ___label.rightAnchor.constraint(equalTo: view1.rightAnchor, constant:20).isActive = true
        
        
        toolBar.bottomAnchor.constraint(equalTo: myDatePicker.topAnchor, constant: 20).isActive = true
        toolBar.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        toolBar.widthAnchor.constraint(equalTo: view1.widthAnchor).isActive = true
        
        myDatePicker.topAnchor.constraint(equalTo: toolBar.bottomAnchor).isActive = true
        myDatePicker.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        myDatePicker.widthAnchor.constraint(equalTo: view1.widthAnchor).isActive = true
        myDatePicker.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: 20).isActive = true
        
        lengthPicker.topAnchor.constraint(equalTo: toolBar.bottomAnchor).isActive = true
        lengthPicker.centerXAnchor.constraint(equalTo: view1.centerXAnchor).isActive = true
        lengthPicker.widthAnchor.constraint(equalTo: view1.widthAnchor).isActive = true
        lengthPicker.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: 20).isActive = true

        
        detailslabel.topAnchor.constraint(equalTo: ___label.bottomAnchor, constant: 10).isActive = true
        detailslabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant:20).isActive = true
        
        optionallabel.topAnchor.constraint(equalTo: detailslabel.bottomAnchor).isActive = true
        optionallabel.leftAnchor.constraint(equalTo: detailslabel.leftAnchor).isActive = true
        
        detailsDescription.topAnchor.constraint(equalTo: detailslabel.topAnchor).isActive = true
        detailsDescription.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        detailsDescription.bottomAnchor.constraint(equalTo: optionallabel.bottomAnchor).isActive = true
        detailsDescription.widthAnchor.constraint(equalToConstant: 225).isActive = true
        
        submit.topAnchor.constraint(equalTo: optionallabel.bottomAnchor, constant: 30).isActive = true
        submit.leftAnchor.constraint(equalTo: view.leftAnchor, constant:20).isActive = true
        submit.rightAnchor.constraint(equalTo: view.rightAnchor, constant:-20).isActive = true
        
    }
    

    
    
    @objc func segueToSubjectsTableViewController() {
        let page = SubjectsTableViewController()
        present(page, animated: true, completion:  nil)
    }
    
    @IBAction func onDidChangeDateByOnStoryboard(sender: UIDatePicker) {
        self.onDidChangeDate(sender: sender)
    }
//    DATE PICKER METHODS
    
    // called when the date picker called.
    @objc internal func onDidChangeDate(sender: UIDatePicker){
        
        // date format
        let myDateFormatter: DateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "MM/dd/yyyy hh:mm"
        
        // get the date string applied date format
        let mySelectedDate: NSString = myDateFormatter.string(from: sender.date) as NSString
        datePlaceholder.text = mySelectedDate as String
    }
    
    
    @objc func dateChanged(textField: UITextField) {
        self.view1.bringSubview(toFront: myDatePicker)
        self.view1.bringSubview(toFront: toolBar)
        self.myDatePicker.isHidden = false
        self.toolBar.isHidden = false
    }
    
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        //        setNotification()
        //self.datePicker.resignFirstResponder()
        myDatePicker.isHidden = true
        lengthPicker.isHidden = true
        self.toolBar.isHidden = true
        
    }
    
    @objc func cancelClick() {
        if (myDatePicker.isHidden){
            lengthPlaceholder.text = ""
        }
        else if (lengthPicker.isHidden){
            datePlaceholder.text = ""
        }
        
        myDatePicker.isHidden = true
        lengthPicker.isHidden = true
        self.toolBar.isHidden = true

    }
//    Prevents datePlaceholder from being edited by users
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return false
    }
    
//    LENGTH SELECTOR METHODS
    @objc internal func onDidChangeTime(sender: UIDatePicker){
        
        // date format
        let date = lengthPicker.date
        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hour = components.hour!
        let minute = components.minute!
        
        /*let myDateFormatter: DateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "hh:mm"
        
        // get the date string applied date format
        let mySelectedDate: NSString = myDateFormatter.string(from: sender.date) as NSString*/
        lengthPlaceholder.text = String(hour) + " hours " + String(minute) + " minutes"
    }
    
    
    @objc func timeChanged(textField: UITextField) {
        self.view1.bringSubview(toFront: lengthPicker)
        self.view1.bringSubview(toFront: toolBar)
        self.lengthPicker.isHidden = false
        self.toolBar.isHidden = false
    }
    
    
}
