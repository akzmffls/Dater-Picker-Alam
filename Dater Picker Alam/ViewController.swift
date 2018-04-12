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
    
    var myTimer = Timer()
    var number : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
        lbl.text = formatter.string(from: myDate.date)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()
            
        })
        
        
    }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy_MM-dd HH:mm:ss a EE"
        currentlbl.text = formatter.string(from: date)
        
        if currentlbl.text == lbl.text {
            view.backgroundColor = UIColor.red
        }else {
            view.backgroundColor = UIColor.white
        }
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

