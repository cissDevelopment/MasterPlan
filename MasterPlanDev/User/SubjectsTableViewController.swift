//
//  NewTableViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/8/2.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

class SubjectsTableViewController: UITableViewController {
    
    var headerView : CustomHeaderView!
    
    var selectionDelegate: ChosenSubjectDelegate!
    
    let classID = "classID"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: classID)
        
        tableView.separatorColor = .white
        tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        tableView.backgroundColor = mainBlue
        
        let dummyViewHeight = CGFloat(100)
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.bounds.size.width, height: dummyViewHeight))
        self.tableView.contentInset = UIEdgeInsetsMake(-dummyViewHeight, 0, 0, 0)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "  " + categoryList[section]
        label.font = UIFont(name: "Avenir-Heavy", size: 20)
        label.textColor = .white
        label.backgroundColor = .clear
        
        return label
    } 
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return categoryList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classList[section].count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: classID, for: indexPath)
        
        cell.textLabel?.text = classList[indexPath.section][indexPath.row]
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 24)
        cell.textLabel?.textColor = .white
        cell.backgroundColor = lightBlue
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
                cell.tintColor = .white
                selectionDelegate.selectedSubject(subject: classList[indexPath.section][indexPath.row])
            } else {
                cell.accessoryType = .none
            }
        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
}
