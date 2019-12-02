//
//  ViewController.swift
//  calc
//
//  Created by Leads Computer on 12/1/19.
//  Copyright © 2019 Leads Computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func one(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        result.text = String(tag)
        
    }
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

