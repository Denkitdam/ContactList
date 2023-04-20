//
//  InitialViewController.swift
//  ContactList
//
//  Created by Denis Kitaev on 20.04.2023.
//

import UIKit

class InitialViewController: UITabBarController {

    let persons = Person.getPersons()


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers = tabBarController?.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstNavigationVC = segue.destination as? UINavigationController {
                guard let contactListVC = firstNavigationVC.topViewController as? ContactListViewController else { return }
                contactListVC.persons = persons
            } else if let secondNavigationVC = segue.destination as? UINavigationController {
                guard let sectionsVC = secondNavigationVC.topViewController as? SectionsListViewController else { return }
                sectionsVC.persons = persons
            }
        }
    }
    

}
