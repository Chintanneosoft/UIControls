//
//  UIWebView.swift
//  UIControls
//
//  Created by Neosoft1 on 24/07/23.
//

import Foundation
import UIKit
import WebKit

class UIWebViewVC: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let request = URLRequest(url: URL(string: "https://chintanrajgor.github.io/")!)
        
        activityIndicator.startAnimating()
        webView.navigationDelegate = self
        webView.load(request)
        activityIndicator.hidesWhenStopped = true
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityIndicator.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
}
