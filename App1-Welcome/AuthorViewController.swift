//
//  AuthorViewController.swift
//  SenWelcome
//
//  Created by Rajarshi Sen on 1/31/18.
//  Copyright © 2018 Rajarshi Sen. All rights reserved.
//

import UIKit
import WebKit

class AuthorViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Include "Rajarshi Sen" as the title of the Author View
        // navigationItem.title = "Rajarshi Sen"
        
        /* Create a path to fetch the content/data of the required web-page
         * located in the project-bundle
         */
        let path = Bundle.main.path(forResource: "Mobile_WebPage/index_RS", ofType: "html")!
        let data: Data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let html = NSString(data: data, encoding:String.Encoding.utf8.rawValue)
        
        // load the content of the web-page onto the web-view
        myWebView.loadHTMLString(html! as String, baseURL: Bundle.main.bundleURL)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
