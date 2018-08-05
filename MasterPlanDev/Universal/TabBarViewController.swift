
//  ViewController.swift

//  MasterPlanDev

//

//  Created by Yoochan Shin on 2018/7/24.

//  Copyright © 2018 YoochanShin. All rights reserved.

//


import UIKit


class TabBarViewController: UITabBarController, UISearchBarDelegate {

    let margin: CGFloat = 10

    let buttonSize: CGFloat = 20
    
    private var mySearchBar: UISearchBar!

    // More ContainerView below
    
    let exitMenuButton : UIButton = {
        let button = UIButton()
        
        button.backgroundColor = UIColor.black
        button.frame = CGRect(x: 0, y: 0, width: 414, height: 736)
        button.alpha = 0.3
        
        return button
    }()
    
    let exitSearchButton : UIButton = {
        let button = UIButton()
        
        button.backgroundColor = UIColor.clear
        button.frame = CGRect (x: 0, y: 0, width: 414, height: 736)
        
        return button
    }()
    
    
    
    // FAQ VIEW
    
    
    let faqView : UIView = {
        let fview = UIView()
        let spacing: CGFloat = 30
        let height: CGFloat = 40
        let color = darkGray
        let borderColor = darkGray.cgColor
        fview.backgroundColor = lightBlue
        fview.frame = CGRect(x: -140, y: 70, width: 400, height: 617)
        
        let faqpage : UILabel = {
            let label = UILabel()
            label.text = "FAQ"
            label.textColor = .black
            label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.adjustsFontSizeToFitWidth = true
            return label
        }()
        
        let backButton: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "<- Back", attributes: [.font : font!]), for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(backAction), for: .touchUpInside)
            return button
        }()
        
        let faqText: UITextView = {
            let textView = UITextView()
            textView.text = """
            Q: Why are you guys so awesome?
            
            A: Virginity power
            
            Q: Who did the most work for this project?
            
            A: Joshua Shou of course!
            
            Q: How do I request a tutor?
            
            A: There's literally a request page you dumbnugget
            
            Q: How do I access the FAQ section?
            
            A: Stare at the screen and ask that question again

            Q: Why didn't Joshua Cheng do anything?
            
            A: Cuz he's a dumbass little shit that doesn't know responsibility

            """
            
            
            let font = UIFont(name: "Avenir-Medium", size: 20)
            textView.font = font
            textView.textColor = .black
            textView.backgroundColor = lightBlue
            //textView.allowsEditingTextAttributes = true
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.isEditable = false
            
            
            return textView
        }()
        

        
        fview.addSubview(backButton)
        fview.addSubview(faqText)
        fview.addSubview(faqpage)
        
        backButton.leftAnchor.constraint(equalTo: fview.leftAnchor, constant:10).isActive = true
        backButton.topAnchor.constraint(equalTo: fview.topAnchor, constant: 20).isActive = true
        //backButton.widthAnchor.constraint(equalToConstant: fview.frame.width).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        faqpage.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant:20).isActive = true
        faqpage.leftAnchor.constraint(equalTo: fview.leftAnchor, constant: 20).isActive = true
        faqpage.rightAnchor.constraint(equalTo: fview.rightAnchor, constant:20).isActive = true
        faqpage.centerXAnchor.constraint(equalTo: fview.centerXAnchor).isActive = true
        
        faqText.topAnchor.constraint(equalTo: faqpage.bottomAnchor, constant: 20).isActive = true
        faqText.leftAnchor.constraint(equalTo: fview.leftAnchor, constant: 20).isActive = true
        faqText.rightAnchor.constraint(equalTo: fview.rightAnchor, constant: -20).isActive = true
        faqText.bottomAnchor.constraint(equalTo: fview.bottomAnchor).isActive = true
        
        
        return fview
    }()
    
    //CONTACT VIEW
    
    let contactView: UIView = {
        let view = UIView()
        let spacing: CGFloat = 30
        let height: CGFloat = 40
        let color = darkGray
        let borderColor = darkGray.cgColor
        view.backgroundColor = lightBlue
        view.frame = CGRect(x: -140, y: 70, width: 400, height: 617)
        
        let contactpage : UILabel = {
            let label = UILabel()
            label.text = "Contact Us"
            label.textColor = .black
            label.font = UIFont.init(name: "Avenir-Heavy", size : 30)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.adjustsFontSizeToFitWidth = true
            return label
        }()
        
        
        let contacttext : UITextView = {
           let textView = UITextView()
            textView.text = """
            Coders:
            
            Joshua Shou
            Email: joshua2019175@concordiashanghai.org
            Phone: 15801734028
            Yoochan Shin
            Email: yoochan2019303@concordiashanghai.org
            Phone: 18121012351
            Ryan Chen
            Email: ryan2019279@concordiashanghai.org
            Phone: 13801812195
            
            Server:
            Joshua Cheng
            Email: dumbassirressponsiblejerk@gmail.org
            Phone: 1800- doyourjobBOY
            (This guy will take weeks to respond if you contact him)
            
            Design:
            Allison Chen
            Email: allison2019155@concordiashanghai.org
            Phone:
            """
            textView.translatesAutoresizingMaskIntoConstraints = false
            
            let font = UIFont(name: "Avenir-Medium", size: 18)
            textView.font = font
            textView.textColor = .black
            textView.backgroundColor = lightBlue
            //textView.allowsEditingTextAttributes = true
            textView.translatesAutoresizingMaskIntoConstraints = false
            textView.isEditable = false
            
            return textView
        }()
        
        let backButton: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "<- Back", attributes: [.font : font!]), for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(backAction), for: .touchUpInside)
            return button
        }()
        
        view.addSubview(contactpage)
        view.addSubview(backButton)
        view.addSubview(contacttext)
        
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant:10).isActive = true
        backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        //backButton.widthAnchor.constraint(equalToConstant: fview.frame.width).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        contactpage.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 0).isActive = true
        contactpage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        contactpage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        //contactpage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contacttext.topAnchor.constraint(equalTo: contactpage.bottomAnchor, constant: 20).isActive = true
        contacttext.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        contacttext.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        contacttext.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        return view
    }()
    
    
    
    
    
    
    
    
    
    
    let moreContainerView : UIView = {
        let view = UIView()
        let spacing: CGFloat = 30
        let height: CGFloat = 40
        let color = darkGray
        let borderColor = darkGray.cgColor
        
        view.backgroundColor = lightBlue
        view.frame = CGRect(x: -140, y: 70, width: 200, height: 617)
        
        let intro: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "   Introduction", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = color
            button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
            //        button.layer.borderWidth = 2
            //        button.layer.borderColor = borderColor
            button.titleLabel?.textColor = color
            button.translatesAutoresizingMaskIntoConstraints = false

            
            return button
        }()
        
        
        
        let question: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "   FAQ", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = color
            button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
            //        button.layer.borderWidth = 2
            //        button.layer.borderColor = borderColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(faqAction), for: .touchUpInside)
            return button
        }()
        
        
        
        let contact: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "   Contact Us", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = color
            button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
            //        button.layer.borderWidth = 2
            //        button.layer.borderColor = borderColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            
            
            button.addTarget(self, action: #selector(contactAction), for: .touchUpInside)
            
            return button
        }()
        
        let signOut: UIButton = {
            let button = UIButton()
            let font = UIFont(name: "Avenir-Medium", size: 20)
            
            button.setAttributedTitle(NSAttributedString(string: "   Sign Out", attributes: [.font : font!]), for: .normal)
            button.titleLabel?.textColor = color
            button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
            //        button.layer.borderWidth = 2
            //        button.layer.borderColor = borderColor
            button.backgroundColor = .clear
            button.translatesAutoresizingMaskIntoConstraints = false
            
            button.addTarget(self, action: #selector(signOutAction), for: .touchUpInside)
            
            return button
        }()
        
        view.addSubview(intro)
        intro.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        intro.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        intro.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        intro.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        view.addSubview(question)
        question.topAnchor.constraint(equalTo: intro.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        question.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        question.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        question.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        view.addSubview(contact)
        contact.topAnchor.constraint(equalTo: question
            .bottomAnchor, constant: CGFloat(spacing)).isActive = true
        contact.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contact.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        contact.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        view.addSubview(signOut)
        signOut.topAnchor.constraint(equalTo: contact.bottomAnchor, constant: CGFloat(spacing)).isActive = true
        signOut.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signOut.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        signOut.heightAnchor.constraint(equalToConstant: height).isActive = true
        


        
        return view
        
        
        
        
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = mainBlue
        view.addSubview(name)
        
        mySearchBar = UISearchBar()
        mySearchBar.delegate = self
        mySearchBar.frame = CGRect(x: 414, y: 30, width: 350, height: 40)
        mySearchBar.backgroundColor = mainBlue
//        Change SearchBar text to white
        let textFieldInsideSearchBar = mySearchBar.value(forKey: "searchField") as? UITextField    
        textFieldInsideSearchBar?.textColor = UIColor.white
        
   //     mySearchBar.layer.position = CGPoint(x: self.view.bounds.width/2, y: 100)

        
        // hide cancel button
        mySearchBar.showsCancelButton = false
        
        // hide bookmark button
        mySearchBar.showsBookmarkButton = false
        
        // set Default bar status.
        mySearchBar.searchBarStyle = .minimal
        
        // set placeholder
        mySearchBar.placeholder = "Input text"
        
        // change the color of cursol and cancel button.
        mySearchBar.tintColor = UIColor.white


        let moreButton = UIButton()
        moreButton.setImage(#imageLiteral(resourceName: "More"), for: .normal)
        moreButton.imageEdgeInsets = UIEdgeInsetsMake(buttonSize, buttonSize, buttonSize, buttonSize)
        
        view.addSubview(moreButton)
        moreButton.addTarget(self, action: #selector(showMore(sender:)), for: .touchUpInside)
        exitMenuButton.addTarget(self, action: #selector(closeMenu(sender:)), for: .touchUpInside)
        
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        
        let searchButton = UIButton()
        searchButton.setImage(#imageLiteral(resourceName: "Search"), for: .normal)
        searchButton.imageEdgeInsets = UIEdgeInsetsMake(buttonSize*1.2, buttonSize*1.2, buttonSize*1.2, buttonSize*1.2)
        
        view.addSubview(searchButton)
        searchButton.addTarget(self, action: #selector(showSearch(sender: )), for: .touchUpInside)
        exitSearchButton.addTarget(self, action: #selector(closeSearch(sender: )), for: .touchUpInside)
        
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
        
        //tabBar.isTranslucent = false
        
        viewControllers = [barController, requestController, currentController,  userController]
        
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

    let animationLength: Double = 0.25
    
    @objc func showMore(sender: UIButton!){
        
        view.addSubview(exitMenuButton)
        view.addSubview(moreContainerView)

        UIView.animate(withDuration: animationLength) {
            self.moreContainerView.transform = CGAffineTransform(translationX: 140, y: 0)
        }

    }
    
    @objc func closeMenu(sender: UIButton!){
        UIView.animate(withDuration: animationLength){
            self.moreContainerView.transform = CGAffineTransform(translationX: -140, y: 0)
        }
        exitMenuButton.removeFromSuperview()
        UIView.animate(withDuration: animationLength){
            self.faqView.transform = CGAffineTransform(translationX: -140, y: 0)
        }
        faqView.removeFromSuperview()
        contactView.removeFromSuperview()
    }
    
    @objc func segueToFirstViewController() {
        let page = FirstViewController()
        present(page, animated: true, completion: nil)
    }
    
    @objc func showSearch (sender: UIButton!){
        view.addSubview(exitSearchButton)
        view.addSubview(mySearchBar)
        
        UIView.animate(withDuration: animationLength){
            self.mySearchBar.transform = CGAffineTransform(translationX: -384, y: 0)
        }
    }
    
    @objc func closeSearch (sender: UIButton!){
        UIView.animate(withDuration: animationLength){
            self.mySearchBar.transform = CGAffineTransform(translationX: 384, y: 0)
        }
        exitSearchButton.removeFromSuperview()
    }
    
    
    @objc func backAction() {
        view.addSubview(exitMenuButton)
        
        faqView.removeFromSuperview()
        contactView.removeFromSuperview()
        
        view.addSubview(moreContainerView)
        
        UIView.animate(withDuration: animationLength) {
            self.faqView.transform = CGAffineTransform(translationX: 140, y: 0)
        }
        
        
    }
    
    @objc func contactAction() {
        view.addSubview(exitMenuButton)
        
        moreContainerView.removeFromSuperview()
        view.addSubview(contactView)
        UIView.animate(withDuration: animationLength) {
            self.contactView.transform = CGAffineTransform(translationX: 140, y: 0)
        }
        
    }
    
    @objc func faqAction() {
        view.addSubview(exitMenuButton)
        //view.willRemoveSubview(moreContainerView)
        moreContainerView.removeFromSuperview()
        view.addSubview(faqView)
        
        UIView.animate(withDuration: animationLength) {
            self.faqView.transform = CGAffineTransform(translationX: 140, y: 0)
        }
        
    }
    
    @objc func signOutAction() {
        let page = LoginViewController()
        present(page, animated: true, completion:  nil)
        
        
    }
    

}


