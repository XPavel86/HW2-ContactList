//
//  Person.swift
//  HW2-ContactList
//
//  Created by Pavel Dolgopolov on 21.03.2024.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
     static func getContacts() -> [Person] {
         
         var persons: [Person] = []
         let dataStorage = DataStore()
         
         for index in 0..<dataStorage.count() {
             let person = Person(
                name: dataStorage.names[index],
                surname: dataStorage.surnames[index],
                phone: dataStorage.phoneNumbers[index],
                email: dataStorage.emails[index]
             )
             persons.append(person)
         }
         return persons
    }
}
