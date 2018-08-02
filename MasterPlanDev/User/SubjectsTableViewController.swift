//
//  NewTableViewController.swift
//  MasterPlanDev
//
//  Created by Yoochan Shin on 2018/8/2.
//  Copyright © 2018 YoochanShin. All rights reserved.
//

import UIKit

let categoryList = ["Math", "Science", "English", "Social Sciences", "World Languages"]
let classList = [
    ["MS Math", "Algebra 1", "Geometry", "Honors Geometry", "Algebra 2", "Honors Algebra 2", "Pre-Calculus", "Honors Pre-Calculus", "AP Calculus AB", "AP Calculus BC"],
    ["MS Science", "Biology", "Regular Chemistry", "Accelerated Chemistry", "Physics", "AP Biology", "AP Chemistry", "AP Environmental Science", "AP Physics 1"],
    ["MS English", "Humanities English", "English 10", "English 11", "English 12", "AP English L&C"],
    ["MS Social Studies", "Humanities", "Regular World History", "AP World History", "AP U.S. History", "AP Psychology", "AP Macroeconomics", "AP Microeconomics"],
    ["CFL 1-3", "CFL Advanced", "Near Native Mandarin", "Native Mandarin", "Spanish 1", "Spanish 2", "Spanish 3", "Spanish 4"]
]

class SubjectsTableViewController: UITableViewController {
    
    var headerView : CustomHeaderView!
    
    let classID = "classID"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: classID)
        
        tableView.separatorColor = .white
        tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        tableView.backgroundColor = lightBlue
        
        let dummyViewHeight = CGFloat(100)
        self.tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.bounds.size.width, height: dummyViewHeight))
        self.tableView.contentInset = UIEdgeInsetsMake(-dummyViewHeight, 0, 0, 0)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "  " + categoryList[section]
        label.font = UIFont(name: "Avenir-Heavy", size: 20)
        label.textColor = .white
        label.backgroundColor = secondaryBlue
        
        return label
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return categoryList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classList[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: classID, for: indexPath)
        
        cell.textLabel?.text = classList[indexPath.section][indexPath.row]
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 20)
        cell.textLabel?.textColor = .white
        cell.backgroundColor = lightBlue
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func setUpHeader() {
        headerView = CustomHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 80), title: "Subjects notified")
        headerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        headerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    }
}
