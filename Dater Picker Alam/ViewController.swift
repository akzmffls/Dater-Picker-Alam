//
//  ViewController.swift
//  Dater Picker Alam
//
//  Created by D7703_14 on 2018. 4. 12..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var myDate: UIDatePicker!
    
    
    @IBOutlet weak var currentlbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeDate(_ sender: Any) {
        print("change Date Picker")
        print(myDate.date)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        lbl.text = formatter.string(from: myDate.date)
        
        
    }
    
}

