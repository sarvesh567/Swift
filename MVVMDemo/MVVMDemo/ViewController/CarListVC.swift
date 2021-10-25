//
//  ViewController.swift
//  MVVMDemo
//
//  Created by Sarvesh Patel on 23/09/21.
//

import UIKit

class CarListVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var viewModel = CarViewModel()
    private var carList = [Car]()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.getCaList()
        setupTableView()
    }
    
    private func setupTableView(){
        tableView.register(UINib(nibName: "CarTVC", bundle: nil), forCellReuseIdentifier: "CarTVC")
            self.tableView.delegate = self
            self.tableView.dataSource = self 
    }
}
extension CarListVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarTVC", for: indexPath) as? CarTVC else {
            return UITableViewCell()
        }
        cell.setData(car: carList[indexPath.row])
        return cell
    }
    
}

extension CarListVC: CarDataDelegate{
    func didReceiveCarData(cars: [Car]) {
        self.carList = cars
        print(cars)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    
}
