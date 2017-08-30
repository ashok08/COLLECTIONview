//
//  ViewController1.swift
//  pro5
//
//  Created by Intern on 07/07/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    
    @IBOutlet weak var pic: UIImageView!
    
    @IBOutlet weak var displayTitle: UILabel!
    
    
    
    var Value: String = ""
    var Value1: UIImage? = UIImage(named: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        displayTitle.text = Value
        pic.image = Value1
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
}
