//
//  ViewController.swift
//  TwoTables
//
//  Created by 于慧敏 on 2/19/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let resturants = ["Chipotle", "McDonald's", "Vanison Pho"]
    
    var foodItemHidden = [String]()
    let foodItems = [["Steak Burito", "Chicken Bowl", "Egg Salad"],["Big Mac", "French Fries", "Chocolate Sundae"], ["Steak Pho", "Spring Roll", "Vietnamese Coffee"]]

    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == tblViewTop) {
            return resturants.count
        } else {
            return foodItemHidden.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = foodItemHidden[indexPath.row]
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            foodItemHidden = foodItems[indexPath[1]]
            self.tblViewBottom.reloadData()
        }
    }
    


}

