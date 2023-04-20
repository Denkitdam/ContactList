//
//  Person.swift
//  ContactList
//
//  Created by Denis Kitaev on 18.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        while persons.count < 6 {
            let newPerson = Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                phone: phones.randomElement() ?? "",
                email: emails.randomElement() ?? ""
            )
            if !persons.contains(where: { $0.name == newPerson.name || $0.surname == newPerson.surname || $0.phone == newPerson.phone && $0.email == newPerson.email }) {
                persons.append(newPerson)
            }
        }
        return persons
    }
}


