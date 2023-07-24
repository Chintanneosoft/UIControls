//
//  UIDatePicker.swift
//  UIControls
//
//  Created by Neosoft1 on 21/07/23.
//

import Foundation
import UIKit

class UIDatePickerVC: UIViewController {
    
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var dateSelected: UILabel!
    @IBOutlet weak var btnClicked: UIButton!
    var tapper = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datepicker.contentHorizontalAlignment = .center
        
    }
    
    @IBAction func valueChanged(_ sender: UIDatePicker) {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .full
        let dateFormatter2 = DateFormatter()
        dateFormatter2.timeStyle = .medium
        dateFormatter1.dateFormat = "MMM dd, yyyy"

        if tapper {
            let selectedDate = sender.date
            let formattedDate = dateFormatter2.string(from: selectedDate)
            dateSelected.text = formattedDate
        }
        else {
            
                let selectedDate = sender.date
                let formattedDate = dateFormatter1.string(from: selectedDate)
                dateSelected.text = formattedDate
            
            }
        
    }
    
    
    @IBAction func btnTapped(_ sender: UIButton) {
        datepicker.isHidden = false
        if tapper {
            datepicker.minimumDate = Date()
              datepicker.datePickerMode = .date
              datepicker.locale = Locale(identifier: "en_US")
            tapper = false
        }
        else{
            datepicker.datePickerMode = .time

            let now = Date()
            let calendar = Calendar.current
//            let minutes = calendar.component(.minute, from: now)
            if let next15Minutes = calendar.date(byAdding: .minute, value: 15, to: now) {
                        datepicker.minimumDate = next15Minutes
                    }
            tapper = true
        }
    }
    
}
