//
//  ViewController.swift
//  UIControls
//
//  Created by Neosoft1 on 21/07/23.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet var UIButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for b in UIButtons{
            b.layer.cornerRadius = 20
            
        }
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func UILabelTapped(_ sender: UIButton) {
        let vcLabel = self.storyboard?.instantiateViewController(withIdentifier: "UILabelVC") as! UILabelVC
        navigationController?.pushViewController(vcLabel, animated: true)
    }
    
    
    @IBAction func UIButtonTapped(_ sender: UIButton) {
        let vcButton = self.storyboard?.instantiateViewController(withIdentifier: "UIButtonVC") as! UIButtonVC
        navigationController?.pushViewController(vcButton, animated: true)
    }
    
    
    @IBAction func UITextFieldTapped(_ sender: UIButton) {
        let vcTextField = self.storyboard?.instantiateViewController(withIdentifier: "UITextFieldVC") as! UITextFieldVC
        navigationController?.pushViewController(vcTextField, animated: true)
    }
    
    @IBAction func UISegmentTapped(_ sender: UIButton) {
        let vcSegment = self.storyboard?.instantiateViewController(withIdentifier: "UISegmentVC") as! UISegmentVC
        navigationController?.pushViewController(vcSegment, animated: true)
    }
    
    
    @IBAction func UISwitchTapped(_ sender: UIButton) {
        let vcSwitch = self.storyboard?.instantiateViewController(withIdentifier: "UISwitchVC") as! UISwitchVC
        navigationController?.pushViewController(vcSwitch, animated: true)
    }
    
    
    @IBAction func UIImageViewTapped(_ sender: UIButton) {
        let vcImageView = self.storyboard?.instantiateViewController(withIdentifier: "UIImageViewVC") as! UIImageViewVC
        navigationController?.pushViewController(vcImageView, animated: true)
    }
    
    
    @IBAction func UIProgressViewTapped(_ sender: UIButton) {
        let vcProgressView = self.storyboard?.instantiateViewController(withIdentifier: "UIProgressViewVC") as! UIProgressViewVC
        navigationController?.pushViewController(vcProgressView, animated: true)
    }
    
    @IBAction func UIStepperTapped(_ sender: UIButton) {
        let vcStepper = self.storyboard?.instantiateViewController(withIdentifier: "UIStepperVC") as! UIStepperVC
        navigationController?.pushViewController(vcStepper, animated: true)
    }
    
    @IBAction func UIDatePickerTapped(_ sender: UIButton) {
        let vcDatePicker = self.storyboard?.instantiateViewController(withIdentifier: "UIDatePickerVC") as! UIDatePickerVC
        navigationController?.pushViewController(vcDatePicker, animated: true)
    }
    
    @IBAction func UIActivityIndicatorTapped(_ sender: UIButton) {
        let vcActivityIndicator = self.storyboard?.instantiateViewController(withIdentifier: "UIActivityIndicatorVC") as! UIActivityIndicatorVC
        navigationController?.pushViewController(vcActivityIndicator, animated: true)
    }
    
    @IBAction func UISliderTapped(_ sender: UIButton) {
        let vcSlider = self.storyboard?.instantiateViewController(withIdentifier: "UISliderVC") as! UISliderVC
        navigationController?.pushViewController(vcSlider, animated: true)
    }
    
    @IBAction func UIWebViewTapped(_ sender: UIButton) {
        let vcWebView = self.storyboard?.instantiateViewController(withIdentifier: "UIWebViewVC") as! UIWebViewVC
        navigationController?.pushViewController(vcWebView, animated: true)
    }
    
    @IBAction func UIPickerViewTapped(_ sender: UIButton) {
        let vcPickerView = self.storyboard?.instantiateViewController(withIdentifier: "UIPickerViewVC") as! UIPickerViewVC
        navigationController?.pushViewController(vcPickerView, animated: true)
    }
    
    @IBAction func UIPageControlTapped(_ sender: UIButton) {
        let vcPageControl = self.storyboard?.instantiateViewController(withIdentifier: "UIPageControlVC") as! UIPageControlVC
        navigationController?.pushViewController(vcPageControl, animated: true)
    }
    
}

