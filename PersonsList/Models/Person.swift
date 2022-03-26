//
//  Person.swift
//  PersonsList
//
//  Created by Вячеслав Квашнин on 26.03.2022.
//

struct Person {
    
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getPerson(for manager: DataManager) -> [Person] {
        
        var person: [Person] = []
        
        let name = manager.names.shuffled()
        let lastName = manager.lastNames.shuffled()
        let phone = manager.phones.shuffled()
        let email = manager.emails.shuffled()
        
        for item in 0..<name.count {
            let persons = Person(
                name: name[item],
                lastName: lastName[item],
                phone: phone[item],
                email: email[item]
            )
            person.append(persons)
        }
        return person
    }
}
