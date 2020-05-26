//
//  HomeViewController.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import UIKit

class HomeViewController: ViewController {
    
    @IBOutlet private var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImage(name: "BashnaEvoluciaMoskva")    }
    
    func setupImage(name: String?) {
        if let pictureName = name {
            let image = UIImage(named: pictureName) ?? UIImage(named: "emptyPicture")
            self.imageView?.image = image
        } else {
            self.imageView? = UIImageView()
        }
    }
    
}
