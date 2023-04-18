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
        for _ in 1...names.count {
            let person = Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                phone: phones.randomElement() ?? "",
                email: emails.randomElement() ?? ""
            )
            
            persons.append(person)
        }
        
        return persons
    }
}


