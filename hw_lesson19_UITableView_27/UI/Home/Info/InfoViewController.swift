//
//  InfoViewController.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import UIKit

class InfoViewController: ViewController {
    @IBOutlet private var textView: UITextView?
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Info"
        self.textView?.text = self.text
    }


   //MARK: - init
    init(text: String?) {
        if let text = text {
            self.text = text
        }
        super.init(nibName: InfoViewController.className, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
