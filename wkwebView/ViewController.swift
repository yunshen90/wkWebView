//
//  ViewController.swift
//  wkwebView
//
//  Created by Yun Shen on 16/6/28.
//  Copyright © 2016年 Yun Shen. All rights reserved.
//

import UIKit
import WebKit //wkwebview1
class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView! //wkwebview2
    
    var webView: WKWebView! //wkwebview3

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //wkwebview4
        webView = WKWebView()
        container.addSubview(webView)
    }
    
    override func viewDidAppear(animated: Bool) {//after view appear then run
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)//left,right,width,height
        webView.frame = frame
        
        /*let urlstr = "https://developer.apple.com/swift/blog/"
        let url = NSURL(string:urlstr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)*/
        
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String){
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)

    }

    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://www.google.com")
    }

    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.google.com/")
    }
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.google.com")
    }
}

