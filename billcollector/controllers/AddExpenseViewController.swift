//
//  AddExpenseViewController.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-11-01.
//

import UIKit

class AddExpenseViewController: UIViewController {
    
    let dividerView: UIView = {
        let dividerView = UIView()
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.backgroundColor = AppTheme.primaryTextColor
        return dividerView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = AppTheme.screenBackgroundColor
        self.navigationItem.title = "add transaction"
        self.tabBarController?.tabBar.isHidden = true
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    private func setupViews() {
        self.view.addSubview(dividerView)
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dividerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            dividerView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor),
            dividerView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
}
