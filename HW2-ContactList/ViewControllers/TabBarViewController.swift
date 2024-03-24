//
//  TabBarViewController.swift
//  HW2-ContactList
//
//  Created by Pavel Dolgopolov on 22.03.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    let person = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let viewControllers = viewControllers as? [UINavigationController] {
            
            viewControllers.forEach { navigationController in
                
                if let topVС = navigationController.topViewController {
                    
                    if let contactsVC = topVС as? ContactsViewController {
                        contactsVC.person = person
                        contactsVC.title = "Contacts"
                        
                    } else if let personsVC = topVС as? PersonsViewController {
                        personsVC.person = person
                        personsVC.title = "Persons"
                    }
                }
            }
        }
    }
}
