//
//  TableViewController.swift
//  TableViewControllerExample
//
//  Created by 于慧敏 on 2/19/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    let friends = ["Jack", "Ashish", "Helen", "Gates", "Mask", "Joe"]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = friends[indexPath.row]

        return cell
    }


}
