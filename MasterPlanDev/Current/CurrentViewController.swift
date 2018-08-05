import UIKit

class CurrentViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        
        
        tableView.register(TutorCell.self, forCellReuseIdentifier: "service")
        tableView.rowHeight = 200
        
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.separatorColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorInset = .init(top: 0, left: 0, bottom: 0, right: 0)
        tableView.backgroundColor = lightBlue
    
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "service", for: indexPath)
    }
    
}
