

import UIKit

class UserStatsViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagepicker = UIImagePickerController()
    
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
    
    let changepic: UIButton = {
        let image1 = UIButton()
        image1.backgroundColor = lightYellow
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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = lightBlue
        view.addSubview(profilepic)
        view.addSubview(changepic)
        view.addSubview(firstname)
        view.addSubview(lastname)
        
        
        setupLayout()

    }
    
    
    private func setupLayout(){
        profilepic.topAnchor.constraint(equalTo: view.topAnchor, constant:140).isActive = true
        profilepic.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        changepic.topAnchor.constraint(equalTo: view.topAnchor, constant: 155).isActive = true
        changepic.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 35).isActive = true

        firstname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        firstname.topAnchor.constraint(equalTo: view.topAnchor, constant:155).isActive = true

        lastname.leftAnchor.constraint(equalTo: changepic.rightAnchor, constant:30).isActive = true
        lastname.topAnchor.constraint(equalTo: firstname.topAnchor, constant:50).isActive = true
    }
    
    @objc func changepicAction (sender: UIButton!) {
        print ("something!")
        imagepicker.delegate = self
        imagepicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        self.present(imagepicker, animated:true, completion:nil)
        
        
        
    }
    
    func imagePickerController(_ _picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]){
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        changepic.setBackgroundImage(image, for: UIControlState.normal)
        dismiss(animated: true, completion: nil)
    }
    
    


}
