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
    
    var delegate: DataDelegate?
    
    var baseURL = "http://0.0.0.0:8081"
    
    // Method to Fetch notes from server
    func fetchNotes() {
        
        // Send GET request to fetch all data and hand over to delegate
        AF.request(baseURL + "/fetch").response { response in
            
            let data = String(data: response.data!, encoding: .utf8)
            
            self.delegate?.updateArray(newArray: data!)
            
        }
    }
    
    // Method to Create note and save in server
    func addNote(title: String, note: String, date: String) {
        
        // Send POST reqeust to save note
        AF.request(baseURL + "/create", method: .post, encoding: URLEncoding.httpBody, headers: ["title": title, "note": note, "date": date]).responseData { response in
            print(response)
        }
    }
    
    // Method to Update note and save in server
    func updateNote(title: String, note: String, date: String, id: String) {
        
        // Send POST reqeust to update note
        AF.request(baseURL + "/update", method: .post, encoding: URLEncoding.httpBody, headers: ["title": title, "note": note, "date": date, "id": id]).responseData { response in
            print(response)
        }
    }
    
    // Method to Delete note and save in server
    func deleteNote(id: String) {
        
        // Send POST reqeust to delete note
        AF.request(baseURL + "/delete", method: .post, encoding: URLEncoding.httpBody, headers: ["id": id]).responseData { response in
            print(response)
        }
    }
}
