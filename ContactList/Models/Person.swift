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
            
            persons.append(newPerson)

        }
        return persons
    }
}


