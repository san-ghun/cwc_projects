//
//  Article.swift
//  NewsAPI-JSON
//
//  Created by Sanghun Park on 2021/12/28.
//

import Foundation

struct Article: Codable {
    
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}
