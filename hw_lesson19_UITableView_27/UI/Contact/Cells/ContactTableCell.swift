//
//  ContactTableCell.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import UIKit

class ContactTableCell: TableCell {
    
    @IBOutlet private var imageCell: UIImageView?
    @IBOutlet private var firstNameLabel: UILabel?
    @IBOutlet private var lastNameLabel: UILabel?
    
    @IBOutlet var separated: UIView?
    
    var data: Employee? {
        didSet {
            firstNameLabel?.text = data?.firstName
            lastNameLabel?.text = data?.lastName
            
            if let avatarName = data?.imageName {
                let image = UIImage(named: avatarName) ?? UIImage(named: "noavatar")
                self.imageCell?.image = image
            } else {
                self.imageCell? = UIImageView()
            }
        }
    }
}
extension ContactTableCell: SeparatedProtocol {
    var separatedView: UIView? {
        return separated
    }
}
