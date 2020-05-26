//
//  AboutViewController.swift
//  hw_lesson19_UITableView_27
//
//  Created by Олег Чудновский on 26.05.2020.
//  Copyright © 2020 Oleg Chudnovskij. All rights reserved.
//

import UIKit

class AboutViewController: ViewController {

    @IBOutlet private var textView: UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "About"
        setText(text: Test.text)
    }
    
    func setText(text: String?){
        if let text = text {
            textView?.text = text
        }
    }

}
