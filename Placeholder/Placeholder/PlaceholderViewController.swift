//
//  PlaceholderViewController.swift
//  Placeholder
//
//  Created by Sarvesh Patel on 22/10/21.
//

import UIKit
import HGPlaceholders
class PlaceholderViewController: UITableViewController {
    var placeholderTableView: TableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CustomPlaceholderTVC", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomPlaceholderTVC")
        placeholderTableView = tableView as? TableView
        placeholderTableView?.placeholderDelegate = self
        placeholderTableView?.placeholdersProvider = .summer
        
    }
    
    // MARK: Table view delegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        switch indexPath.row {
        case 0:
            placeholderTableView?.showLoadingPlaceholder()
        case 1:
            placeholderTableView?.showNoResultsPlaceholder()
        case 2:
            placeholderTableView?.showErrorPlaceholder()
        case 3:
            placeholderTableView?.showNoConnectionPlaceholder()
        case 4:
            let key = PlaceholderKey.custom(key: "starWars")
            placeholderTableView?.showCustomPlaceholder(with: key)
        case 5:
            let key = PlaceholderKey.custom(key: "XIB")
            placeholderTableView?.showCustomPlaceholder(with: key)
            
        default:
            placeholderTableView?.showDefault()
        }
    }

}
extension PlaceholderViewController: PlaceholderDelegate {
    func view(_ view: Any, actionButtonTappedFor placeholder: Placeholder) {
        print(placeholder.key.value)
        placeholderTableView?.showDefault()
    }

}
