//
//  SectionsListViewController.swift
//  ContactList
//
//  Created by Denis Kitaev on 20.04.2023.
//

import UIKit

class SectionsListViewController: UITableViewController {
    
    var persons: [Person]!
    

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Section contacts", for: indexPath)

        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
   
  
}
