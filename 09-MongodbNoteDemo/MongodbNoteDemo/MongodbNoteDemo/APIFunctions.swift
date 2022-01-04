//
//  APIFunctions.swift
//  MongodbNoteDemo
//
//  Created by Sanghun Park on 2022/01/04.
//

import Foundation
import Alamofire

struct Note: Decodable {
    var title: String
    var date: String
    var note: String
    var _id: String
}

class APIFunctions {
    
    // Make instance as singleton
    static let functions = APIFunctions()
    
    var baseURL = "http://0.0.0.0:8081"
    
    var delegate: DataDelegate?
    
    // Fetch notes from server and hand over to delegate
    func fetchNotes() {
        
        AF.request(baseURL + "/fetch").response { response in
            
            let data = String(data: response.data!, encoding: .utf8)
            
            self.delegate?.updateArray(newArray: data!)
            
        }
    }
    
}
