//
//  ViewController.swift
//  CustomTableViewCellXib
//
//  Created by 于慧敏 on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imageNames = ["food0", "food1", "food2", "food3", "food4", "food5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        
        cell.imgContainer.image = UIImage(named: "food\(indexPath.row)")
        cell.lblImage.text = "food\(indexPath.row)"
        
        return cell
    }
    

}

