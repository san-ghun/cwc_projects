//
//  NewsFeed.swift
//  NewsAPI-JSON
//
//  Created by Sanghun Park on 2021/12/28.
//

import Foundation

struct NewsFeed: Codable {
    
    var status: String = ""
    var totalResults: Int = 0
    var articles: [Article] = []
    
}
