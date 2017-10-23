//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Vaibhav Sahu on 10/21/17.
//  Copyright © 2017 Vaibhav Sahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data: [String] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...1000{
            data.append("\(i)")
        }
        
    tableView.delegate = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier", for: indexPath) as! CustomTableViewCell
        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.green
        } else{
            cell.contentView.backgroundColor = UIColor.red
        }
        cell.label.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: "Hint", message: "you have selected row number \(indexPath.row+1)", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }

}

