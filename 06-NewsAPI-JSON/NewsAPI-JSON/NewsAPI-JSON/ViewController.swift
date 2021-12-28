//
//  ViewController.swift
//  NewsAPI-JSON
//
//  Created by Sanghun Park on 2021/12/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Hit the API endpoint
        // API from NewsAPI, top headlines of business category in US
        let urlString = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=6919d675c7dc40b08279d861f38c6727"
        
        let url = URL(string: urlString)
        
        guard url != nil else { return }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check for errors
            if error == nil && data != nil {
                
                // Parse JSON
                let decoder = JSONDecoder()
                
                do {
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    
                    print(newsFeed)
                }
                catch {
                    print("Error in JSON parsing")
                }
                
                
            }
        }
        
        // Make the API Call
        dataTask.resume()
    }


}

