//
//  ViewController.swift
//  ContactList
//
//  Created by Denis Kitaev on 18.04.2023.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        
    }


}

