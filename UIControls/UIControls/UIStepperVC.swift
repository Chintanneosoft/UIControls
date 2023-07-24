//
//  UIStepperVC.swift
//  UIControls
//
//  Created by Neosoft1 on 21/07/23.
//

import Foundation
import UIKit

class UIStepperVC: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stepper.autorepeat = true
        stepper.isContinuous = true
        valueLabel.text = stepper.value.description
        stepper.maximumValue = 20.0
        stepper.minimumValue = -20.0
        
        
    }
    
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        valueLabel.text = stepper.value.description
        var msg:String?
        if valueLabel.text ?? "0.0" == String(stepper.maximumValue) {
            msg = "Stepper has Reached Maximum Value"
            let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default,handler: nil))
            self.present(alert, animated: true, completion: nil)
            stepper.value = 0.0
            valueLabel.text = "0.0"
        }
        if valueLabel.text ?? "0.0" == String(stepper.minimumValue) {
            msg = "Stepper has Reached Minimum Value"
           // self.present(alert, animated: true, completion: nil)
            stepper.value = 0.0
            valueLabel.text = "0.0"
        }
    }
    
    
}
