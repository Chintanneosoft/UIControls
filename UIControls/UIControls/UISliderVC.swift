//
//  UISliderVC.swift
//  UIControls
//
//  Created by Neosoft1 on 24/07/23.
//

import Foundation
import UIKit

class UISliderVC: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.minimumValue = 0
               slider.maximumValue = 100
    }
    
    @IBAction func valueChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value)
               sender.value = roundedValue
               lbl.text = "You have reached "+Int(sender.value).description
    }
    
}
