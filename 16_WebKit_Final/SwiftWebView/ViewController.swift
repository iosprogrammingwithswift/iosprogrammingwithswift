//
//  ViewController.swift
//  SwiftWebView
//
//  Created by Andreas Wittmann on 11/01/15.
//  Copyright (c) 2015 🐨 + 🙉. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.backgroundColor = UIColor.whiteColor()
        webView.scalesPageToFit = true
        webView.dataDetectorTypes = .All
        
        
        let url:NSURL = NSURL(string: "http://www.google.de")!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: WebViewDelegate
    
   
    func webViewDidStartLoad(webView: UIWebView){
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView){
           UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?){
        // Show the error inside the web view
        let localizedErrorMessage = NSLocalizedString("An error occured:", comment: "")
        
        let errorHTML = "<!doctype html><html><body><div style=\"width: 100%%; text-align: center; font-size: 36pt;\">\(localizedErrorMessage) \(error.localizedDescription)</div></body></html>"
        
        webView.loadHTMLString(errorHTML, baseURL: nil)
        
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        
    }
}

