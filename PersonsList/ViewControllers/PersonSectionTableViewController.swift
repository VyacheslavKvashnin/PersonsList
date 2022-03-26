//
//  PersonSectionTableViewController.swift
//  PersonsList
//
//  Created by Вячеслав Квашнин on 26.03.2022.
//

import UIKit

class PersonSectionTableViewController: UITableViewController {
    
    var person: [Person]!
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = person[section].fullName
        return section
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personSection", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let currentIndex = person[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = currentIndex.phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = currentIndex.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
