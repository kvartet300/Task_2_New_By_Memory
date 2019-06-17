//
//  ViewController.swift
//  Task_2_Memory_3
//
//  Created by MacAir300 on 6/17/19.
//  Copyright © 2019 MacAir300. All rights reserved.
//

import UIKit

class FirstViewController:  UIViewController,
                            UITableViewDataSource,
                            UITableViewDelegate {
    
    @IBOutlet weak var userDataTextField: UITextField!
    @IBOutlet weak var userDataGrandLabel: UILabel!
    @IBOutlet weak var userDataTableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    var dataUserArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addActionButton(_ sender: Any) {
        if userDataTextField.text! == "" {
        }else{
            userDataGrandLabel.text! = "Hello " + userDataTextField.text! + " !!!"
            dataUserArray.append(userDataTextField.text!)
            userDataTableView.reloadData()
            }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataUserArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = userDataTableView.dequeueReusableCell(withIdentifier: "myTableCell", for: indexPath)
        userCell.textLabel?.text = dataUserArray[indexPath.row]
        return userCell
    }
}

