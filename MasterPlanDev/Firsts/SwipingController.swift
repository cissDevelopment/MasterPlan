

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let imageNames = ["MasterPlan", "Home Page", "User Page", "Current Page", "Request Page"]
    
    let strings = ["Welcome to MasterPlan! This is the introduction to how to use the App! Each of the 4 tabs on the bottom refers to a different page",
                   "The first tab is the Service Bar page. Here you can see all the service requests, and sign up for whichever slot you want.",
                   "The second tab is the Request page. Here you can request your service, be sure to fill out all the necessary information.",
                   "The third tab is the current page, here you can see all the services you signed up for, organized for you in rows.",
                   "Finally, the fourth tab is the user page, here you can edit your profile pic, change your notification settings, and see your accumulated service hours."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = lightBlue
        collectionView?.isPagingEnabled = true
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView?.isPagingEnabled = true
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageNames.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        
        let imageName = imageNames[indexPath.item]
        cell.userImageView.image = UIImage(named: imageName)
        cell.backButton.addTarget(self, action: #selector(seguetoBarViewController), for: .touchUpInside)
        cell.descriptionTextView.text = strings[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    @objc func seguetoBarViewController(sender: UIButton) {
        let page = TabBarViewController()
        present(page, animated: true, completion: nil)
    }
    
    
    
    
}


