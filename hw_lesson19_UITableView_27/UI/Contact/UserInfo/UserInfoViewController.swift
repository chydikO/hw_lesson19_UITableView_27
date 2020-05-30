//
//  UserInfoViewController.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import UIKit

class UserInfoViewController: ViewController {
    
    @IBOutlet private var fullName: UILabel?
    @IBOutlet private var avatar: UIImageView?
    @IBOutlet private var phone: UILabel?
    @IBOutlet private var email: UILabel?
    
    private var data: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "User Info"
        setData()
    }
    
    private func setData() {
        self.fullName?.text = self.data?.fullName
        if let avatarName = self.data?.imageName {
            self.avatar?.image = UIImage(named: avatarName)
        } else {
            self.avatar? = UIImageView()
        }
        if let phone = self.data?.phone {
            self.phone?.text = phone
        } else {
            self.phone?.text = nil
        }
        if let email = self.data?.email {
            self.email?.text = email
        } else {
            self.email?.text = nil
        }
    }
    
    //MARK: - init
    
    init(employee: Employee) {
        self.data = employee
        super.init(nibName: UserInfoViewController.className, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
