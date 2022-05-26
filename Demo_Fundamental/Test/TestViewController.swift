//
//  TestViewController.swift
//  Demo_Fundamental
//
//  Created by Chi Tak Liu on 24/5/2022.
//

import UIKit

class TestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var topTableView: UITableView!
    @IBOutlet weak var bottomTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        commonInit()
    }
    
    func commonInit() {
        setupTableView()
    }
    
    func setupTableView() {
        topTableView.backgroundColor = .red
        
        // TableView Setting
        // 1. set up
        topTableView.delegate = self
        topTableView.dataSource = self
        
        // 2. register TableViewCell
        topTableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier:  TestTableViewCell.cellID)
        
        
        bottomTableView.backgroundColor = .blue
        
        bottomTableView.delegate = self
        bottomTableView.dataSource = self
        
        // 2. register TableViewCell
        bottomTableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: TestTableViewCell.cellID)
    }
    
    // MARK:- UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertVC = AlertViewController()
        present(alertVC, animated: true)
        
    }
    
    
    //MARK:- UITableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == topTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.cellID, for: indexPath) as! TestTableViewCell
            cell.setContext(number: "No.: \(indexPath.row + 1)", name: "name: Testing")
            return cell
            
        } else if tableView == bottomTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.cellID, for: indexPath) as! TestTableViewCell
            cell.setContext(number: "No.: \(indexPath.row)", name: "name: Testing2")
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    

}

