//
//  ViewController.swift
//  DatePicker
//
//  Created by dit03 on 2019. 4. 17..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var mDataPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let locale = Locale(identifier: "ko-KO")
        mDataPicker.locale = locale
        
        mDataPicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd hh:mm:ss EEE a"
        let formattedDate = format.string(from: date)
        outLabel.text = formattedDate
        
    }
    
    
    
    @IBAction func valueChanged(_ sender: Any) {
        let selected = mDataPicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm:ss EEE a"
        outLabel.text = formatter.string(from: selected)
        
    }
    
    


}

