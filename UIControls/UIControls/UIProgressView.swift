//
//  UIProgressView.swift
//  UIControls
//
//  Created by Neosoft1 on 21/07/23.
//

import Foundation
import UIKit

class UIProgressViewVC: UIViewController {
    
    @IBOutlet weak var progressView1: UIProgressView!
    
    @IBOutlet weak var progressView2: UIProgressView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btnDone: UIButton!
    
    
    let progress1 = Progress(totalUnitCount: 4)
    let progress2 = Progress(totalUnitCount: 2)
    
    var cnt: Float?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressView1.isHidden = true
        cnt = 0
        progressView2.progress = cnt!
        
        progressView1.progress = cnt!
        
        progressView1.layer.cornerRadius = 10
    }
    
    @IBAction func btn1Tapped(_ sender: UIButton) {
        self.progress2.completedUnitCount += 1
        let progrsssFloat = Float(self.progress2.fractionCompleted)
        self.progressView2.setProgress(progrsssFloat, animated: true)
    }
    
    @IBAction func btn2Tapped(_ sender: UIButton) {
        self.progress2.completedUnitCount += 1
        let progrsssFloat = Float(self.progress2.fractionCompleted)
        self.progressView2.setProgress(progrsssFloat, animated: true)
    }
    
    @IBAction func btnDoneTapped(_ sender: UIButton) {
        if self.progress2.isFinished {
            progressView1.isHidden = false
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
                (timer) in
                guard self.progress1.isFinished == false else{
                    timer.invalidate()
                    self.resultLabel.isHidden = false
                    return
                    
                }
                self.progress1.completedUnitCount += 1
                let progrsssFloat = Float(self.progress1.fractionCompleted)
                self.progressView1.setProgress(progrsssFloat, animated: true)
                
            }
        }
    }
    
    
    
}
