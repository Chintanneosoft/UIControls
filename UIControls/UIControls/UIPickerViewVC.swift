//
//  UIPickerView.swift
//  UIControls
//
//  Created by Neosoft1 on 24/07/23.
//

import Foundation
import UIKit

class UIPickerViewVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var selectedValue: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerData = ["Aditya", "Chintan", "Karan", "Mayur", "Modassir", "Rashida", "Saad"]
        pickerView.setValue(UIColor.white, forKeyPath: "textColor")
        pickerView.delegate = self
        pickerView.dataSource = self
           
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return pickerData[row]
        }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedValue.text = pickerData[row]
    }
}
