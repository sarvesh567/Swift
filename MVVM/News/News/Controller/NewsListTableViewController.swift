//
//  ViewController.swift
//  News
//
//  Created by Sarvesh Patel on 25/09/21.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    private var aticlelistViewModel: ArticleListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=Apple&from=2021-09-25&sortBy=popularity&apiKey=89c82ab607ae4f0083e9fb5e65891665")!
        WebService().getArticle(url: url) { articles in
            if let articles = articles{
                self.aticlelistViewModel = ArticleListViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.aticlelistViewModel == nil ? 0 : aticlelistViewModel.numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aticlelistViewModel.numberOfRowsInSection(section)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTVC") as? ArticleTVC else {
            return UITableViewCell()
        }
        let articleVM = self.aticlelistViewModel.articleAtIndex(indexPath.row)
        cell.titleLabel.text = articleVM.title
        cell.descripltionLabel.text = articleVM.description
        return cell
    }
}

