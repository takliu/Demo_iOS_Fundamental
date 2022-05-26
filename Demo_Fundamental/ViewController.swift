//
//  ViewController.swift
//  Demo_Fundamental
//
//  Created by Chi Tak Liu on 24/5/2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let btn = UIButton()
        btn.setTitle("to Test", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(buttonDidPressed), for: .touchUpInside)
        return btn
    }()
    
    
    // first life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        commonInit()
    }

    func commonInit() {
        setupUI()
        setupConstraint()
    }
    
    @objc
    func buttonDidPressed() {
        let testVC = TestViewController()
        
        self.navigationController?.pushViewController(testVC, animated: true)
    }

}

extension ViewController {
    
    func setupUI() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        view.addSubview(button)
        
    }
    
    func setupConstraint() {
        // MUST
        button.translatesAutoresizingMaskIntoConstraints = false
        
//        button.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        button.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        button.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        button.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}


