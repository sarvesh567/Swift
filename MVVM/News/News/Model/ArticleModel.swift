//
//  ArticleModel.swift
//  News
//
//  Created by Sarvesh Patel on 25/09/21.
//

import Foundation
struct ArticleList: Codable {
    var articles: [Article]
}

struct Article: Codable {
    var title: String
    var description: String
}
