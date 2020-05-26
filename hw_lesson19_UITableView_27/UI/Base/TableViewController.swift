//
//  TableViewController.swift
//  My_lesson19_UITableView+Model
//
//  Created by Олег Чудновский on 10.05.2020.
//  Copyright © 2020 Олег Чудновский. All rights reserved.
//

import UIKit

class TableViewController: ViewController, UITableViewDataSource, UITableViewDelegate {

    var dataSource = [Any]()
    
    @IBOutlet var tableView: UITableView?
    var tableViewStyle: UITableView.Style {
        return .plain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    //MARK: -Setup TableView
    private func setupTableView() {
        if self.tableView == nil {
            let tableView = UITableView(frame: self.view.bounds, style: tableViewStyle)
            self.view.addSubview(tableView)
            
            tableView.translatesAutoresizingMaskIntoConstraints = false
            let constraints = [
                tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0),
                tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
                tableView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0),
                tableView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 0),
            ]
            NSLayoutConstraint.activate(constraints)
            
            self.tableView = tableView
        }
        
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.separatorStyle = .none
        self.tableView?.backgroundColor = .none
        
        registerCells()
    }
    
    func registerCells() {
         
    }
    
    //MARK: -UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("Need override this method  in SubClass")
    }

    //MARK: -UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let cell = cell as? SeparatedProtocol {
            cell.separatedView?.isHidden = indexPath.row == dataSource.count - 1
        }
    }
    
}
