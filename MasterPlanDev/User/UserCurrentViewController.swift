//import UIKit
//
//  UserCurrentViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/25.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class UserCurrentViewController: UITableViewController {
    
    override func viewDidLoad() {
        
        tableView.register(TutorCell.self, forCellReuseIdentifier: "service")
        tableView.rowHeight = 200
        
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.separatorColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = .init(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "service", for: indexPath)
    }
    
}
