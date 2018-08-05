import UIKit
import UserNotifications

let profilepicture: UIImageView = {
    let image = UIImageView()

    return image

}()








class UserMainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    
    var imagepicker = UIImagePickerController()
    
    let emailNotificationSwitch : UISwitch = {
        let mySwitch = UISwitch()
        
        mySwitch.isOn = false
        mySwitch.tintColor = .white
        mySwitch.onTintColor = mainBlue
        mySwitch.thumbTintColor = lightYellow
        
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        mySwitch.addTarget(self, action: #selector(switchAction), for: UIControlEvents.valueChanged)
        
        return mySwitch
    }()

    let changepic: UIButton = {
        let image1 = UIButton()
        image1.backgroundColor = lightYellow
        image1.setBackgroundImage(profilepicture.image, for: UIControlState.normal)
        image1.layer.borderWidth = 0
        image1.layer.masksToBounds = false
        image1.layer.borderColor = UIColor.black.cgColor
        image1.layer.cornerRadius = 60
        image1.clipsToBounds = true
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.widthAnchor.constraint(equalToConstant: 120).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 120).isActive = true
        image1.addTarget(self, action: #selector(changepicAction(sender:)), for: .touchUpInside)
        
        return image1
    }()
    
    let firstname : UILabel = {
        let label = UILabel()
        label.text = "Joshua"
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "Avenir-Heavy", size : 50)
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
    }()
    
    
    
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
    
    let lastname : UILabel = {
        let label = UILabel()
        label.text = "Shou"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor  = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:50)
        label.sizeToFit()
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        return label
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
    
    
    

    
    let userSegmentedControl: UISegmentedControl = {
        let userItems = ["Stats", "Settings"]
        let segmentedControl = UISegmentedControl(items: userItems)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        return segmentedControl
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true // Large title
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in})
        
        view.addSubview(userSegmentedControl)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        
        view2.isHidden = true
        view3.isHidden = true
        view1.isHidden = false
        
        

        userSegmentedControl.addUnderlineForSelectedSegment()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.topAnchor.constraint(equalTo: userSegmentedControl.bottomAnchor).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.topAnchor.constraint(equalTo: userSegmentedControl.bottomAnchor).isActive = true
        view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        view3.translatesAutoresizingMaskIntoConstraints = false
        view3.topAnchor.constraint(equalTo: userSegmentedControl.bottomAnchor).isActive = true
        view3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view3.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        userSegmentedControl.changeUnderlinePosition()
        
        view1.backgroundColor = lightBlue
        view1.addSubview(profilepic)
        view1.addSubview(changepic)
        view1.addSubview(firstname)
        view1.addSubview(lastname)
        view1.addSubview(accservice)
        view1.addSubview(hours)
        view1.addSubview(weekservice)
        view1.addSubview(weekhours)
       // view1.addSubview(weekrank)
        //view1.addSubview(rank)
        
        profilepic.topAnchor.constraint(equalTo: view1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        changepic.topAnchor.constraint(equalTo: view1.topAnchor, constant: 35).isActive = true
        changepic.leftAnchor.constraint(equalTo:view1.leftAnchor, constant: 35).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: view1.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
        accservice.topAnchor.constraint(equalTo: changepic.bottomAnchor, constant: 30).isActive = true
        accservice.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        hours.topAnchor.constraint(equalTo: accservice.bottomAnchor, constant: 10).isActive = true
        hours.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        weekservice.topAnchor.constraint(equalTo: hours.bottomAnchor, constant: 20).isActive = true
        weekservice.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        
        weekhours.topAnchor.constraint(equalTo: weekservice.bottomAnchor, constant:10).isActive = true
        weekhours.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        
//        weekrank.topAnchor.constraint(equalTo: weekhours.bottomAnchor, constant:10).isActive = true
//        weekrank.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
//        
//        rank.topAnchor.constraint(equalTo: weekrank.bottomAnchor, constant:10).isActive = true
//        rank.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        
        updateView()
        userSegmentedControl.changeUnderlinePosition()
        
    }
    
    let accservice: UILabel = {
        let label = UILabel()
        label.text = "Accumulated Service"
        label.backgroundColor = lightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:25)
        
        return label
    }()
    
    let hours: UILabel = {
        let label = UILabel()
        label.text = "521 hours"
        label.backgroundColor = lightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:50)
        
        return label
    }()
    
    let weekservice: UILabel = {
        let label = UILabel()
        label.text = "Week 5 Service"
        label.backgroundColor = lightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:25)
        
        return label
    }()
    
    let weekhours: UILabel = {
        let label = UILabel()
        label.text = "13.5 Hours"
        label.backgroundColor = lightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:50)
        
        return label
    }()
    
    let weekrank: UILabel = {
        let label = UILabel()
        label.text = "Week 5 Ranking"
        label.backgroundColor = lightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size: 25)
        
        return label
    }()
    
    let rank: UILabel = {
        let label = UILabel()
        label.text = "30/285"
        label.backgroundColor = lightBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.init(name: "Avenir-Heavy", size:50)
        
        return label
    }()
    
    private func setupLayoutview1(){
        
        userSegmentedControl.changeUnderlinePosition()
        
        view1.backgroundColor = lightBlue
        view1.addSubview(profilepic)
        view1.addSubview(changepic)
        view1.addSubview(firstname)
        view1.addSubview(lastname)
        view1.addSubview(accservice)
        view1.addSubview(hours)
        view1.addSubview(weekservice)
        view1.addSubview(weekhours)
        //view1.addSubview(weekrank)
        //view1.addSubview(rank)
        
        

        profilepic.topAnchor.constraint(equalTo: view1.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        changepic.topAnchor.constraint(equalTo: view1.topAnchor, constant: 35).isActive = true
        changepic.leftAnchor.constraint(equalTo:view1.leftAnchor, constant: 35).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: view1.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
        accservice.topAnchor.constraint(equalTo: changepic.bottomAnchor, constant: 30).isActive = true
        accservice.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        hours.topAnchor.constraint(equalTo: accservice.bottomAnchor, constant: 10).isActive = true
        hours.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        
        weekservice.topAnchor.constraint(equalTo: hours.bottomAnchor, constant: 20).isActive = true
        weekservice.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        
        weekhours.topAnchor.constraint(equalTo: weekservice.bottomAnchor, constant:10).isActive = true
        weekhours.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        
        
        
//        weekrank.topAnchor.constraint(equalTo: weekhours.bottomAnchor, constant:10).isActive = true
//        weekrank.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
//
//        rank.topAnchor.constraint(equalTo: weekrank.bottomAnchor, constant:10).isActive = true
//        rank.leftAnchor.constraint(equalTo: view1.leftAnchor, constant:20).isActive = true
        
    }
    

    
    
    let subjectsNotified : UILabel = {
        let label = UILabel()
        
        label.text = "Subjects notified: "
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let subjectsNotifiedDisclosure: UIButton = {
        let button = UIButton()
        
        button.setAttributedTitle(NSAttributedString(string: ">", attributes: [.font : UIFont(name: "Avenir-Black", size: 20)!]), for: .normal)
        button.titleLabel?.textColor = .white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(segueToSubjectsViewController), for: .touchUpInside)
        
        return button
    }()
    
    let phoneNumber : UILabel = {
        let label = UILabel()
        
        label.text = "Phone number: "
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let phoneNumberEdit : UITextField = {
        let textField = UITextField()
        
        textField.text = "181-2101-2351"
        
        textField.textColor = .white
        textField.font = settingsElementFont
        textField.backgroundColor = .clear
        textField.tintColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.returnKeyType = UIReturnKeyType.done
        
        return textField
    }()
    
    let emailNotification : UILabel = {
        let label = UILabel()
        
        label.text = "Enable notifications: "
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    

    
    let enableNotification : UILabel = {
        let label = UILabel()
        
        label.text = "Email notification: "
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let enableNotificationSwitch : UISwitch = {
        let mySwitch = UISwitch()
        
        mySwitch.isOn = false
        mySwitch.tintColor = .white
        mySwitch.onTintColor = mainBlue
        mySwitch.thumbTintColor = lightYellow
        
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        
        return mySwitch
    }()
    
    let hideRanking : UILabel = {
        let label = UILabel()
        
        label.text = "Hide ranking: "
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let hideRankingSwitch : UISwitch = {
        let mySwitch = UISwitch()
        
        mySwitch.isOn = false
        mySwitch.tintColor = .white
        mySwitch.onTintColor = mainBlue
        mySwitch.thumbTintColor = lightYellow
        
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        
        return mySwitch
    }()
    
    let signOut : UIButton = {
        let button = UIButton()
        
        button.backgroundColor = mainBlue
        button.setAttributedTitle(NSAttributedString(string: "Sign Out", attributes: [.font : UIFont(name: "Avenir-Medium", size: 20)!]), for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(segueToFirstViewController), for: .touchUpInside)
        
        return button
    }()
    
    let scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
        
    }()
    
    let spacing : CGFloat = 30
    
    private func setupLayoutView3(){
        
        userSegmentedControl.changeUnderlinePosition()
        
        scrollView.backgroundColor = lightBlue
        
        view3.addSubview(scrollView)
        
        scrollView.addSubview(profilepic)
        scrollView.addSubview(changepic)
        scrollView.addSubview(firstname)
        scrollView.addSubview(lastname)
        scrollView.addSubview(subjectsNotified)
        scrollView.addSubview(subjectsNotifiedDisclosure)
        scrollView.addSubview(phoneNumber)
        scrollView.addSubview(phoneNumberEdit)
        scrollView.addSubview(emailNotification)
        scrollView.addSubview(emailNotificationSwitch)
        scrollView.addSubview(enableNotification)
        scrollView.addSubview(enableNotificationSwitch)

        scrollView.addSubview(signOut)
        
        scrollView.contentSize = CGSize(width: view3.frame.width, height: 700)
        scrollView.leftAnchor.constraint(equalTo: view3.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view3.rightAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view3.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view3.bottomAnchor).isActive = true
        
        profilepic.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        
        changepic.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepic.centerYAnchor.constraint(equalTo:profilepic.centerYAnchor).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
        subjectsNotified.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        subjectsNotified.topAnchor.constraint(equalTo: profilepic.bottomAnchor, constant: spacing).isActive = true
        
        subjectsNotifiedDisclosure.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -20).isActive = true
        subjectsNotifiedDisclosure.centerYAnchor.constraint(equalTo: subjectsNotified.centerYAnchor).isActive = true
        
        phoneNumber.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        phoneNumber.topAnchor.constraint(equalTo: subjectsNotified.bottomAnchor, constant: spacing).isActive = true
        
        phoneNumberEdit.leftAnchor.constraint(equalTo: phoneNumber.rightAnchor).isActive = true
        phoneNumberEdit.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -20).isActive = true
        phoneNumberEdit.topAnchor.constraint(equalTo: phoneNumber.topAnchor).isActive = true
        phoneNumberEdit.bottomAnchor.constraint(equalTo: phoneNumber.bottomAnchor).isActive = true
        
        emailNotification.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        emailNotification.topAnchor.constraint(equalTo: phoneNumber.bottomAnchor, constant: spacing).isActive = true
        
        emailNotificationSwitch.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -25).isActive = true
        emailNotificationSwitch.centerYAnchor.constraint(equalTo: emailNotification.centerYAnchor).isActive = true
        emailNotificationSwitch.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
        enableNotification.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        enableNotification.topAnchor.constraint(equalTo: emailNotification.bottomAnchor, constant: spacing).isActive = true
        
        enableNotificationSwitch.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -25).isActive = true
        enableNotificationSwitch.centerYAnchor.constraint(equalTo: enableNotification.centerYAnchor).isActive = true
        enableNotificationSwitch.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
     
        
        signOut.topAnchor.constraint(equalTo: enableNotificationSwitch.bottomAnchor, constant: spacing).isActive = true
        signOut.heightAnchor.constraint(equalToConstant: 40).isActive = true
        signOut.leftAnchor.constraint(equalTo: view.leftAnchor, constant:20).isActive = true
        signOut.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    @objc func changepicAction (sender: UIButton!) {
        print ("something!")
        imagepicker.delegate = self
        imagepicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(imagepicker, animated:true, completion:nil)
    }
    
    @objc func segueToFirstViewController() {
        let page = FirstViewController()
        present(page, animated: true, completion: nil)
    }
    
    @objc func segueToSubjectsViewController() {
        let page = SubjectsViewController()
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        transition.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(page, animated: false, completion: nil)
    }
    
    func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]){
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        changepic.setBackgroundImage(image, for: UIControlState.normal)
        profilepicture.image = image
        changepicuniversal.image = image
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func switchAction(_ sender: Any ) {

        if emailNotificationSwitch.isOn
        {
        
            let content = UNMutableNotificationContent()
            content.title = "You have tasks to complete!"
            content.subtitle = ""
            content.body = "Joshua Shou is a genius omg"
            let alarmTime = Date().addingTimeInterval(60)
            let components = Calendar.current.dateComponents([.weekday,
                                                              .hour, .minute], from: alarmTime)
            let trigger = UNCalendarNotificationTrigger(dateMatching:
                components, repeats: true)
            let request = UNNotificationRequest(identifier:
                "taskreminder", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        }
            
        else
        {
            UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        }
        
        
    }
    
    private func updateView() {
        if userSegmentedControl.selectedSegmentIndex == 0 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            setupLayoutview1()
        }
         else {
            userSegmentedControl.changeUnderlinePosition()
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            print("view 3!")
            setupLayoutView3()
            
        }
    }
    
    
}
