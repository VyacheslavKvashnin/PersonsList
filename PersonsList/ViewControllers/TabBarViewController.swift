//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Вячеслав Квашнин on 26.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let persons = Person.getPerson(for: DataManager())
        
        let personFirstVC = viewControllers?.first as? PersonsListTableViewController
        let personSectionVC = viewControllers?.last as? PersonSectionTableViewController
        
        personFirstVC?.person = persons
        personSectionVC?.person = persons

    }
}
