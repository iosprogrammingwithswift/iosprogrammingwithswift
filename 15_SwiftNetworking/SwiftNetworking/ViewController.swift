//
//  ViewController.swift
//  SwiftNetworking
//
//  Created by Andreas Wittmann on 11/01/15.
//  Copyright (c) 2015 🐨 + 🙉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        let wuerzburgWeatherURL:NSURL  = NSURL(string:"http://api.openweathermap.org/data/2.5/weather?q=wuerzburg")!
        //NSURLSession
        let request: NSURLRequest = NSURLRequest(URL:wuerzburgWeatherURL)
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: config)
        session.dataTaskWithRequest(request, completionHandler:
            {(data, response, error) in
                guard data != nil else {
                    print("no data found: \(error)")
                    return
                }
                guard error != nil else {
                    print("no error found: \(error)")
                    return
                }
                 var jsonResult:NSDictionary!
                do {
                  jsonResult  = try (NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary)!
                } catch {
                    print(error)
                }
                guard jsonResult != nil else{
                    return
                }
                print(jsonResult)
                
        }).resume()
        
    }
}