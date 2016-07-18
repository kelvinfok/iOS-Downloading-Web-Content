//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by kelvinfok on 13/7/16.
//  Copyright © 2016 kelvinfok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://www.yahoo.com")!
        
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        /*
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            
            // data -> return when there is a successful response from the site
            // will happen when task completes
            // closure -> method when another method completes
            
            if let urlContent = data {
                // do stuff
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), {
                    
                    // use self. to refer to things outside of the closure
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
                
                // print(webContent) shows HTML
                
            } else {
                // Show error message
            }
            
        }
        
     task.resume()
 
 */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

