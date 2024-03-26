//
//  DataStore.swift
//  HW2-ContactList
//
//  Created by Pavel Dolgopolov on 21.03.2024.
//

import Foundation

final class DataStore {
    
    let names = [
        "John",
        "Emma",
        "Michael",
        "Sophia",
        "William",
        "Olivia",
        "James",
        "Ava",
        "Alexander",
        "Isabella"
    ].shuffled()

    let surnames = [
        "Smith",
        "Johnson",
        "Brown",
        "Williams",
        "Jones",
        "Miller",
        "Davis",
        "Garcia",
        "Rodriguez",
        "Wilson"
    ].shuffled()

    let phoneNumbers = [
        "+7 (123) 456-7890",
        "+91 (234) 567-8901",
        "+86 (345) 678-9012",
        "+55 (456) 789-0123",
        "+49 (567) 890-1234",
        "+1 (678) 901-2345",
        "+66 (789) 012-3456",
        "+55 (890) 123-4567",
        "+61 (901) 234-5678",
        "+44 (012) 345-6789"
    ].shuffled()

    let emails = [
        "john@gmail.com",
        "emma@yahoo.com",
        "michael@hotmail.com",
        "sophia@aol.com",
        "william@outlook.com",
        "olivia@mail.ru",
        "james@yandex.ru",
        "ava@rambler.ru",
        "alexander@gmail.com",
        "isabella@yahoo.com"
    ].shuffled()

    func count() -> Int {
         min(names.count, surnames.count, phoneNumbers.count, emails.count)
    }
}
