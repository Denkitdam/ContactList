//
//  InitialViewController.swift
//  ContactList
//
//  Created by Denis Kitaev on 20.04.2023.
//

import UIKit

class InitialViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers() {
        guard let contactsVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionsVC = viewControllers?.last as? SectionsListViewController else { return }
        let persons = Person.getPersons()
        contactsVC.persons = persons
        sectionsVC.persons = persons
        
    }
    

}
