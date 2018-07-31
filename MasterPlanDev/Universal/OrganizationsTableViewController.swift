//
//  OrganizationsTableViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/7/31.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

import UIKit

class OrganizationsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let myArray: NSArray = ["First","Second","Third"]
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(topBar)
        topBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topBar.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topBar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        topBar.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        
        myTableView = UITableView()
        myTableView.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
        myTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        myTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }
    
    let topBar : UIView = {
       let view = UIView()
        view.backgroundColor = mainBlue
        
        return view
    }()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        return cell
    }
}
