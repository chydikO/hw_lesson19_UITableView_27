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
    
    static func TestData() -> [Employee] {
        let employee1 = Employee(firstName: "Илья", lastName: "Олейник", imageName: "img1", phone: "098-522-11-23", email: "0985221123@ukr.net")
        let employee2 = Employee(firstName: "Савелий", lastName: "Крамаров", imageName: "img1", phone: "098-522-11-23", email: "0985221123@ukr.net")
        let employee3 = Employee(firstName: "Остап", lastName: "Бендер", imageName: "img1", phone: "098-522-11-23", email: "0985221123@ukr.net")
        
        return [employee1, employee2, employee3]
    }
}
