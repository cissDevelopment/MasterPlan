
//  ViewController.swift

//  MasterPlanDev

//

//  Created by Yoochan Shin on 2018/7/24.

//  Copyright © 2018 YoochanShin. All rights reserved.

//


import UIKit


class TabBarController: UITabBarController {

    let margin: CGFloat = 10
    

    let buttonSize: CGFloat = 20
    
    let containerView : UIView = {
        let view = UIView()
        let spacing = 35

        view.backgroundColor = lightBlue
        view.frame = CGRect(x: -140, y: 70, width: 220, height: 617)

        let intro: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "Introduction", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = .white
            button.layer.cornerRadius = CGFloat(20)
            button.layer.borderWidth = 2
            button.layer.borderColor = white.cgColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            
    //        button.addTarget(self, action: #selector(signUpAction(sender:)), for: .touchUpInside)
            
            return button
        }()
        
        let question: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "FAQ", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = .white
            button.layer.cornerRadius = CGFloat(20)
            button.layer.borderWidth = 2
            button.layer.borderColor = white.cgColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            
            //        button.addTarget(self, action: #selector(signUpAction(sender:)), for: .touchUpInside)
            
            return button
        }()
        
        let contact: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "Contact Us", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = .white
            button.layer.cornerRadius = CGFloat(20)
            button.layer.borderWidth = 2
            button.layer.borderColor = white.cgColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            
            //        button.addTarget(self, action: #selector(signUpAction(sender:)), for: .touchUpInside)
            
            return button
        }()
        
        let signOut: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "Sign Out", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = .white
            button.layer.cornerRadius = CGFloat(20)
            button.layer.borderWidth = 2
            button.layer.borderColor = white.cgColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            
            //        button.addTarget(self, action: #selector(signUpAction(sender:)), for: .touchUpInside)
            
            return button
        }()
        
        view.addSubview(intro)
        intro.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        intro.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        intro.widthAnchor.constraint(equalToConstant: 150).isActive = true
        intro.heightAnchor.constraint(equalToConstant: CGFloat(40)).isActive = true
        
        view.addSubview(question)
        question.topAnchor.constraint(equalTo: intro.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        question.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        question.widthAnchor.constraint(equalToConstant: 150).isActive = true
        question.heightAnchor.constraint(equalToConstant: CGFloat(40)).isActive = true
        
        view.addSubview(contact)
        contact.topAnchor.constraint(equalTo: question
            .bottomAnchor, constant: CGFloat(spacing)).isActive = true
        contact.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contact.widthAnchor.constraint(equalToConstant: 150).isActive = true
        contact.heightAnchor.constraint(equalToConstant: CGFloat(40)).isActive = true
        
        view.addSubview(signOut)
        signOut.topAnchor.constraint(equalTo: contact.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        signOut.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signOut.widthAnchor.constraint(equalToConstant: 150).isActive = true
        signOut.heightAnchor.constraint(equalToConstant: CGFloat(40)).isActive = true
        
        return view
    }()
    
    let tintedButton : UIButton = {
        let button = UIButton()
        
        button.backgroundColor = UIColor.black
        button.frame = CGRect(x: 0, y: 0, width: 414, height: 736)
        button.alpha = 0.3
        
        return button
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        view.backgroundColor = mainBlue
        
        view.addSubview(name)
        
        
        let moreButton = UIButton()
        
        moreButton.setImage(#imageLiteral(resourceName: "More"), for: .normal)
        
        moreButton.imageEdgeInsets = UIEdgeInsetsMake(buttonSize, buttonSize, buttonSize, buttonSize)
        
        view.addSubview(moreButton)
        moreButton.addTarget(self, action: #selector(showMore(sender:)), for: .touchUpInside)
        tintedButton.addTarget(self, action: #selector(closeMenu(sender:)), for: .touchUpInside)
        
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        let searchButton = UIButton()
        
        searchButton.setImage(#imageLiteral(resourceName: "Search"), for: .normal)
        
        searchButton.imageEdgeInsets = UIEdgeInsetsMake(buttonSize*1.2, buttonSize*1.2, buttonSize*1.2, buttonSize*1.2)
        
        view.addSubview(searchButton)
        
        
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        name.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        
        
        
        moreButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: margin).isActive = true
        
        moreButton.centerYAnchor.constraint(equalTo: name.centerYAnchor).isActive = true
        
        
        
        searchButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -margin).isActive = true
        
        searchButton.centerYAnchor.constraint(equalTo: name.centerYAnchor, constant: -1).isActive = true
        

        
        setupTabBar()
        
    }
    
    
    
    func setupTabBar() {
        
        let barController = BarMainViewController()
        
        barController.tabBarItem.image =  #imageLiteral(resourceName: "Bar").withRenderingMode(.alwaysOriginal)
        
        barController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "BarPressed").withRenderingMode(.alwaysOriginal)
        
        
        
        let requestController = RequestMainViewController()
        
        requestController.tabBarItem.image =  #imageLiteral(resourceName: "Request").withRenderingMode(.alwaysOriginal)
        
        requestController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "RequestPressed").withRenderingMode(.alwaysOriginal)
        
        let currentController = CurrentMainViewController()
        
        currentController.tabBarItem.image = #imageLiteral(resourceName: "Request").withRenderingMode(.alwaysOriginal)
        
        currentController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "RequestPressed").withRenderingMode(.alwaysOriginal)
        
        let userController = UserMainViewController()
        
        userController.tabBarItem.image =  #imageLiteral(resourceName: "User").withRenderingMode(.alwaysOriginal)
        
        userController.tabBarItem.selectedImage =  #imageLiteral(resourceName: "UserPressed").withRenderingMode(.alwaysOriginal)
        
        
        
        tabBar.backgroundColor = secondaryBlue
        
        //        tabBar.isTranslucent = false
        
        
        
        viewControllers = [barController, requestController,currentController,  userController]
        
        
        
        guard let items = tabBar.items else { return }
        
        
        
        for item in items {
            
            item.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0)
            
        }
        
    }
    

    let name: UILabel = {
        
        let label = UILabel()
        
        let master = "MASTER"
        
        let plan = "PLAN"
        
        let size = 36
        
   
        let title = NSMutableAttributedString(string: master, attributes: [.font : UIFont(name: "Avenir-Black", size: CGFloat(size))!])
        
        title.append(NSAttributedString(string: plan, attributes: [.font : UIFont(name: "Avenir-Light", size: CGFloat(size))!]))
        
        
        label.attributedText = title
        
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()

    @objc func showMore(sender: UIButton!){
        
        view.addSubview(tintedButton)
        
        view.addSubview(containerView)
        
        

            UIView.animate(withDuration: 0.5) {
                self.containerView.transform = CGAffineTransform(translationX: 140, y: 0)
            }

    }
    
    @objc func closeMenu(sender: UIButton!){
        UIView.animate(withDuration: 0.5){
            self.containerView.transform = CGAffineTransform(translationX: -140, y: 0)
        }
        tintedButton.removeFromSuperview()
    }
    

}


