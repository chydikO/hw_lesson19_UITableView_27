//
//  Employee.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import Foundation

class Employee {
    let firstName: String
    let lastName: String
    let imageName: String?
    let phone: String?
    let email: String?
    
    init(firstName: String, lastName: String, imageName: String?, phone: String?, email: String?) {
        self.firstName = firstName
        self.lastName = lastName
        self.imageName = imageName
        self.phone = phone
        self.email = email
    }
}
