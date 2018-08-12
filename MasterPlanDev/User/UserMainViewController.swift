import UIKit
import UserNotifications

let profilepicture: UIImageView = {
    let image = UIImageView()

    return image

}()

class UserMainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    var imagepicker = UIImagePickerController()
    
    let user: UIView = {
        let view = UIView()
        view.backgroundColor = secondaryBlue
        let label = UILabel()
        label.text = "User Settings"
        label.textColor  = .white
        label.font = UIFont(name: "Avenir-Medium", size: 30)
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
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
    
    let accumulatedService : UILabel = {
        let label = UILabel()
        
        label.text = "Accumulated service: "
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let hours : UILabel = {
        let label = UILabel()
        
        label.text = "52"
        
        label.textColor = .white
        label.font = settingsElementFont
        label.textAlignment = .left
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    
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
    
    private func setUp(){
        scrollView.backgroundColor = lightBlue
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(profilepic)
        scrollView.addSubview(changepic)
        scrollView.addSubview(firstname)
        scrollView.addSubview(lastname)
        scrollView.addSubview(accumulatedService)
        scrollView.addSubview(hours)
        scrollView.addSubview(subjectsNotified)
        scrollView.addSubview(subjectsNotifiedDisclosure)
        scrollView.addSubview(phoneNumber)
        scrollView.addSubview(phoneNumberEdit)
        scrollView.addSubview(emailNotification)
        scrollView.addSubview(emailNotificationSwitch)
        scrollView.addSubview(enableNotification)
        scrollView.addSubview(enableNotificationSwitch)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(user)
        
        user.translatesAutoresizingMaskIntoConstraints = false
        
        user.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        user.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        user.heightAnchor.constraint(equalToConstant: 40).isActive = true
        user.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        scrollView.addSubview(signOut)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 700)
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: user.bottomAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        profilepic.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:20).isActive = true
        profilepic.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        
        changepic.centerXAnchor.constraint(equalTo: profilepic.centerXAnchor).isActive = true
        changepic.centerYAnchor.constraint(equalTo:profilepic.centerYAnchor).isActive = true
        
        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: scrollView.topAnchor, constant:35).isActive = true
        
        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
        
        accumulatedService.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        accumulatedService.topAnchor.constraint(equalTo: profilepic.bottomAnchor, constant: spacing).isActive = true
        
        hours.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        hours.centerYAnchor.constraint(equalTo: accumulatedService.centerYAnchor).isActive = true
        
        subjectsNotified.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        subjectsNotified.topAnchor.constraint(equalTo: accumulatedService.bottomAnchor, constant: spacing).isActive = true
        
        subjectsNotifiedDisclosure.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        subjectsNotifiedDisclosure.topAnchor.constraint(equalTo: subjectsNotified.topAnchor).isActive = true
        
        phoneNumber.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        phoneNumber.topAnchor.constraint(equalTo: subjectsNotified.bottomAnchor, constant: spacing).isActive = true
        
        phoneNumberEdit.leftAnchor.constraint(equalTo: phoneNumber.rightAnchor).isActive = true
        phoneNumberEdit.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        phoneNumberEdit.topAnchor.constraint(equalTo: phoneNumber.topAnchor).isActive = true
        phoneNumberEdit.bottomAnchor.constraint(equalTo: phoneNumber.bottomAnchor).isActive = true
        
        emailNotification.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        emailNotification.topAnchor.constraint(equalTo: phoneNumber.bottomAnchor, constant: spacing).isActive = true
        
        emailNotificationSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        emailNotificationSwitch.centerYAnchor.constraint(equalTo: emailNotification.centerYAnchor).isActive = true
        emailNotificationSwitch.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
        enableNotification.leftAnchor.constraint(equalTo: profilepic.leftAnchor).isActive = true
        enableNotification.topAnchor.constraint(equalTo: emailNotification.bottomAnchor, constant: spacing).isActive = true
        
        enableNotificationSwitch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
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
        transition.duration = subjectsTime
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
}
