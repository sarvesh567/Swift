//
//  WebService.swift
//  News
//
//  Created by Sarvesh Patel on 25/09/21.
//

import Foundation
class WebService {
    func getArticle(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url){ data, response, error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                let articles = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articles{
                    completion(articleList.articles)
                }
                
            }
        }.resume()
    }
}
