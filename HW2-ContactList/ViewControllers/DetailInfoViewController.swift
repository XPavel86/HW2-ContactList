//
//  DetailInfoViewController.swift
//  HW2-ContactList
//
//  Created by Pavel Dolgopolov on 21.03.2024.
//

import UIKit

final class DetailInfoViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person?
    
    // MARK: - Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = person {
            phoneLabel.text = "Phone: \(person.phone)"
            emailLabel.text = "Email: \(person.email)"
            navigationItem.title = person.fullName
        }
    }
}
