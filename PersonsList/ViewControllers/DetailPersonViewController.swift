//
//  DetailPersonViewController.swift
//  PersonsList
//
//  Created by Вячеслав Квашнин on 26.03.2022.
//

import UIKit

class DetailPersonViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "\(person.name) \(person.lastName)"
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
