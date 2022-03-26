//
//  ViewController.swift
//  PersonsList
//
//  Created by Вячеслав Квашнин on 26.03.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = "ooo"
        cell.contentConfiguration = content
        
        return cell
    }
}
