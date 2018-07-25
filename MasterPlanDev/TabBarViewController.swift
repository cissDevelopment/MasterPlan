//
//  ViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/24.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = mainBlue
        
        setupTabBar()
    }
    
    func setupTabBar() {
        let barController = BarMainViewController()
        barController.tabBarItem.image = #imageLiteral(resourceName: "Bar").withRenderingMode(.alwaysOriginal)
        barController.tabBarItem.selectedImage = #imageLiteral(resourceName: "BarPressed").withRenderingMode(.alwaysOriginal)
        
        let requestController = RequestMainViewController()
        requestController.tabBarItem.image = #imageLiteral(resourceName: "Request").withRenderingMode(.alwaysOriginal)
        requestController.tabBarItem.selectedImage = #imageLiteral(resourceName: "RequestPressed").withRenderingMode(.alwaysOriginal)
        
        let userController = UserMainViewController()
        userController.tabBarItem.image = #imageLiteral(resourceName: "User").withRenderingMode(.alwaysOriginal)
        userController.tabBarItem.selectedImage = #imageLiteral(resourceName: "UserPressed").withRenderingMode(.alwaysOriginal)
        
        tabBar.backgroundColor = secondaryBlue
        tabBar.isTranslucent = false
        
        viewControllers = [barController, requestController, userController]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0)
        }
    }

}
