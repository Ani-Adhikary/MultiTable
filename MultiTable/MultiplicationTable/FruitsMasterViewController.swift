//
//  FruitsMasterViewController.swift
//  TableTemp
//
//  Created by Ani Adhikary on 24/09/17.
//  Copyright © 2017 Ani Adhikary. All rights reserved.
//

import UIKit

class FruitsMasterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FruitsMasterViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath)
        let index = indexPath.row + 1
        cell.textLabel?.text = "5 x \(index) = \(5 * index)"
        return cell
    }
}


