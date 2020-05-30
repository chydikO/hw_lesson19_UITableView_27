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
        
        dataSource.append(contentsOf: Employee.TestData())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Contact"
    }
    
    //MARK: - RegisterCells
    override func registerCells() {
        self.tableView?.register(ContactTableCell.nib, forCellReuseIdentifier: ContactTableCell.reuseIdentifier)
        
       //self.tableView?.register(UINib(nibName: "ContactTableCell", bundle: nil), forCellReuseIdentifier: "ContactTableCell")

    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactTableCell.reuseIdentifier, for: indexPath)
        if let cell = cell  as? ContactTableCell, let employee = dataSource[indexPath.row] as? Employee {
            cell.data = employee
        }
        return cell
    }
    
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        if let employee = dataSource[indexPath.row] as? Employee {
            let controller = UserInfoViewController(employee: employee)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
