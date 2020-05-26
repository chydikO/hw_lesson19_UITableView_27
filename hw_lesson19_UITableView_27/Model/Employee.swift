//
//  Employee.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import Foundation

class Employee {
    let name: String
    let image: String?
    let phone: String?
    let email: String?
    
    init(name: String, image: String?, phone: String?, email: String?) {
        self.name = name
        self.image = image
        self.phone = phone
        self.email = email
    }
}
