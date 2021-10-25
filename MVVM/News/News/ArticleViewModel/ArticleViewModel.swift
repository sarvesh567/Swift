//
//  ArticleViewModel.swift
//  News
//
//  Created by Sarvesh Patel on 25/09/21.
//

import Foundation
struct ArticleListViewModel {
      let articles: [Article]
}
extension ArticleListViewModel{
    var numberOfSection: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(article)
    }
}
struct ArticleViewModel {
    private var article: Article
}

extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }
}
extension ArticleViewModel{
    var title: String {
        return self.article.title
    }
}

extension ArticleViewModel{
    var description: String {
        return self.article.description
    }
}
