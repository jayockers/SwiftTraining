//
//  ViewController.swift
//  Band Name Generator
//
//  Created by Jay Ockers on 4/16/18.
//  Copyright © 2018 Jay Ockers. All rights reserved.
//

import UIKit
import CFNetwork

class ViewController: UIViewController {
    
    
    @IBOutlet var webView: UIWebView!
    @IBOutlet var bandName: UILabel!
    @IBAction func getBandName(_ sender: UIButton){
        
    }
    
    func handleClientError(_ error: Error){
        
    }
    func handleServerError(_ response: URLResponse?){
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        let url = URL(string: "")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                self.handleClientError(error)
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
                self.handleServerError(response)
                return
            }
            
            if let mimeType = httpResponse.mimeType, mimeType == "text/html", let data = data, let string = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    self.webView.loadHTMLString(string, baseURL: url)
                }
            }
            
        }
        task.resume()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

