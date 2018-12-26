//
//  WebsiteViewController.swift
//  CPBox
//
//  Created by Jonathan Ho on 8/8/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebsiteViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        
        
        if ListTableViewController.lastSelected == 0 {
            let api = InnerTableViewController.documentation[InnerTableViewController.lastSelected]
            if let url = URL(string: api.link) {
                let myRequest = URLRequest(url: url)
                webView.load(myRequest)
            }
        } else if ListTableViewController.lastSelected == 1 {
            let article = InnerTableViewController.articles[InnerTableViewController.lastSelected]
            if let url = URL(string: article.link) {
                let myRequest = URLRequest(url: url)
                webView.load(myRequest)
            }
        } else if ListTableViewController.lastSelected == 2 {
            let book = InnerTableViewController.books[InnerTableViewController.lastSelected]
            if let url = URL(string: book.link) {
                let myRequest = URLRequest(url: url)
                webView.load(myRequest)
            }
        }
        
        
        webView.uiDelegate = self
        view = webView
    }
}
