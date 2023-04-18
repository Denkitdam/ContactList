//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Denis Kitaev on 18.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let persons = Person.getPersons()


    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contacts", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.row]
        content.text = "\(contact.name) \(contact.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        let person = persons[indexPath.row]
        let contactDetailsVC = segue.destination as? ContactDetailsViewController
        contactDetailsVC?.person = person 
    }
   

}
