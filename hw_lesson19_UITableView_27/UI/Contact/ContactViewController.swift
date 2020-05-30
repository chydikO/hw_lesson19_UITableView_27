//
//  ContactViewController.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import UIKit

class ContactViewController: TableViewController {

    //MARK: - setup
    override func setup() {
        super.setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //dataSource.append(contentsOf: [Employee.TestData()])
    }

   override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       self.navigationItem.title = "Contact"
   }

}
