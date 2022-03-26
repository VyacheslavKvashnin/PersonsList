//
//  ViewController.swift
//  PersonsList
//
//  Created by Вячеслав Квашнин on 26.03.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    
    let person = Person.getPerson(for: DataManager())
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailPersonVC = segue.destination as? DetailPersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let persons = person[indexPath.row]
        detailPersonVC.person = persons
    }
}

extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let currentIndex = person[indexPath.row]
        content.text = "\(currentIndex.name) \(currentIndex.lastName)"
        cell.contentConfiguration = content
        
        return cell
    }
}
