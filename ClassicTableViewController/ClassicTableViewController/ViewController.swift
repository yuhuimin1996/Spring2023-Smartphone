//
//  ViewController.swift
//  ClassicTableViewController
//
//  Created by 于慧敏 on 2/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let friends = ["mary", "jack", "mark", "ashish", "jane", "mary", "jack", "mark"]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tblView.delegate = self;
        tblView.dataSource = self;
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friends[indexPath.row]
        
        return cell
    }
    


}

