//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Denis Kitaev on 18.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   

}
