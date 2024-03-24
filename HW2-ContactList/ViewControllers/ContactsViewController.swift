//
//  ContactsTableViewController.swift
//  HW2-ContactList
//
//  Created by Pavel Dolgopolov on 21.03.2024.
//

import UIKit

final class ContactsViewController: UITableViewController {

    // MARK: - Public Properties
    var person: [Person] = []
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailsVC = segue.destination as? DetailInfoViewController
            detailsVC?.person = person[indexPath.row]
        }
    }

    // MARK: - Overrides Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = person[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
