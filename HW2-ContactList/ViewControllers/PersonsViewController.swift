//
//  PersonsListTableViewController.swift
//  HW2-ContactList
//
//  Created by Pavel Dolgopolov on 21.03.2024.
//

import UIKit

final class PersonsViewController: UITableViewController {
    
    // MARK: - Public Properties
    var person: [Person] = []
    
    // MARK: - Overrides Methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return person[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = person[indexPath.section]
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "PhoneСell",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
