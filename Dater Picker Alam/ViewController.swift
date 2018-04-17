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
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a"
        lbl.text = formatter.string(from: myDate.date)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()
            
        })
        
        
    }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a"
        currentlbl.text = formatter.string(from: date)
        
        if currentlbl.text == lbl.text {
            let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다!", preferredStyle: .actionSheet)
            
            let okAction = UIAlertAction(title: "확인", style: .default, handler: {(myAction: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.red
            })
            
            let cancelAction =  UIAlertAction(title: "취소", style: .cancel, handler: {(myAction: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.white
            })
            
            let testAction = UIAlertAction(title: "테스트", style: .destructive, handler: {(myAction: UIAlertAction) -> Void in
                self.view.backgroundColor = UIColor.green
            })
            
            myAlert.addAction(okAction)
            myAlert.addAction(cancelAction)
            myAlert.addAction(testAction)
            
            present(myAlert, animated: true, completion: nil)
            
        
        } //else {
            //view.backgroundColor = UIColor.white
        //}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeDate(_ sender: Any) {
        print("change Date Picker")
        print(myDate.date)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a"
        lbl.text = formatter.string(from: myDate.date)
        
        
    }
    
}

