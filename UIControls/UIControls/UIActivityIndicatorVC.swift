//
//  UIActivityIndicator.swift
//  UIControls
//
//  Created by Neosoft1 on 24/07/23.
//

import Foundation
import UIKit

class UIActivityIndicatorVC: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.style = .large
        activityIndicator.hidesWhenStopped = true
        
    }
    
    @IBAction func startTapped(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func stopTapped(_ sender: UIButtonVC) {
        activityIndicator.stopAnimating()
    }
    
}
