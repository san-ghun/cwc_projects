//
//  ViewController.swift
//  OCR-API-Demo
//
//  Created by Sanghun Park on 2021/12/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // URL
        // API from OCR Text Extractor, Rapid API Hub
        // need to subscribe the plan, go for free plan for testing
        let url = URL(string: "https://ocr-text-extractor.p.rapidapi.com/detect-text-from-image-uri")
        
        guard url != nil else {
            print("Error creating url object")
            return
        }
        
        // URL Request
        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 15.0)
        
        // Specify the header
        let headers = [
            "content-type": "application/json",
            "accept": "string",
            "x-rapidapi-host": "ocr-text-extractor.p.rapidapi.com",
            "x-rapidapi-key": "5da6446e9bmsh99ef2cd218cd6d4p1c3f62jsn5f0376387ff8"
        ]
        
        request.allHTTPHeaderFields = headers
        
        // Specify the body
        let parameters = [
            "Uri": "https://www.techsmith.com/blog/wp-content/uploads/2020/11/TechSmith-Blog-ExtractText.png",
            "Language": "eng",
            "DetectOrientation": false,
            "Scale": false,
            "IsTable": false,
            "OcrEngine": "Version2"
        ] as [String: Any]
        
        do {
            let body = try JSONSerialization.data(withJSONObject: parameters, options: [])
            print("JSON Serialization Done")
            
            request.httpBody = body as Data
        }
        catch {
            print("Error in JSON serialization")
        }
        
        // Set the request type
        request.httpMethod = "POST"
        
        // Get the URLSession
        let session = URLSession.shared
        
        // Create the data task
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            // Check for errors
            if error == nil && data != nil {
                
                // Try to parse out the data
                do {
                    let res = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String: Any]
                    print("Response 1")
                    print(res)
                }
                catch {
                    print("Error parsing response data")
                }
                
                let resp = response as? HTTPURLResponse
                print("Response 2")
                print(resp)
            } else {
                print(error)
            }
        }
        
        // Fire off the data task
        dataTask.resume()
    }


}

