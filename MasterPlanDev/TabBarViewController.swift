
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
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        view.backgroundColor = mainBlue
        
        view.addSubview(name)
        
        
        
        
        let moreButton = UIButton()
        
        moreButton.setImage(#imageLiteral(resourceName: "More"), for: .normal)
        
        moreButton.imageEdgeInsets = UIEdgeInsetsMake(buttonSize, buttonSize, buttonSize, buttonSize)
        
        view.addSubview(moreButton)
        
        moreButton.addTarget(self, action: #selector(showMore(sender:)), for: .touchUpInside)
        
        
        
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
        
        let containerView = UIView(frame: CGRect(x: -140.0, y: 70, width: 140, height: 617))
        
        containerView.backgroundColor = lightBlue
        
        self.view.addSubview(containerView)
        
        UIView.animate(withDuration: 0.5) {
            
            containerView.transform = CGAffineTransform(translationX: 140, y: 0)
            
        }
        
    }
    
}


