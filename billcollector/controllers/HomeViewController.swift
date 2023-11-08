//
//  ViewController.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-10-19.
//

import UIKit

class HomeViewController: UIViewController {
    var cardView = CardView()
    var addExpenseButton = AddExpenseButton()
    var historyTableView = HistoryTableView()
    var historyContainer = UIView()
    var accountLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = AppTheme.screenBackgroundColor
        historyTableView.delegate = self
        historyTableView.dataSource = self
        historyTableView.register(HistoryTableViewCell.self,  forCellReuseIdentifier: "HistoryTableViewCell")
        historyTableView.separatorStyle = .none
        setupView()
        buttonPressed()
        self.navigationController?.setDefaultNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }

    private func setupView() {
        self.view.addSubview(accountLabel)
        self.view.addSubview(cardView)
        self.view.addSubview(historyContainer)
        historyContainer.addSubview(historyTableView)
        historyContainer.dropShadow()
        self.view.addSubview(addExpenseButton)
        cardView.layer.cornerRadius = 10.0
        cardView.translatesAutoresizingMaskIntoConstraints = false
        addExpenseButton.translatesAutoresizingMaskIntoConstraints = false
        historyTableView.translatesAutoresizingMaskIntoConstraints = false
        historyContainer.translatesAutoresizingMaskIntoConstraints = false
        accountLabel.translatesAutoresizingMaskIntoConstraints = false
        accountLabel.text = "account"
        accountLabel.font = UIFont(name: "DamascusBold", size: 20.0)
        accountLabel.textColor = AppTheme.primaryTextColor

        NSLayoutConstraint.activate([
            accountLabel.bottomAnchor.constraint(equalTo: self.cardView.topAnchor, constant: 0),
            accountLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 25),
            accountLabel.heightAnchor.constraint(equalToConstant: 30),
                
            cardView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            cardView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            cardView.widthAnchor.constraint(equalToConstant: 350),
            cardView.heightAnchor.constraint(equalToConstant: 100),
            
            historyContainer.topAnchor.constraint(equalTo: self.cardView.bottomAnchor, constant: 100),
            historyContainer.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            historyContainer.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            historyContainer.heightAnchor.constraint(equalToConstant: 500),
            
            historyTableView.topAnchor.constraint(equalTo: historyContainer.topAnchor),
            historyTableView.leadingAnchor.constraint(equalTo: historyContainer.leadingAnchor),
            historyTableView.trailingAnchor.constraint(equalTo: historyContainer.trailingAnchor),
            historyTableView.bottomAnchor.constraint(equalTo: historyContainer.bottomAnchor),
            
            addExpenseButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            addExpenseButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            addExpenseButton.widthAnchor.constraint(equalToConstant: 60),
            addExpenseButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func buttonPressed() {
        addExpenseButton.buttonPressedCallBack = { [weak self] in
            let vc = AddExpenseViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = historyTableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell", for: indexPath) as? HistoryTableViewCell else {
            fatalError("couldnt make the cell")
        }
        cell.textLabel?.text = indexPath.row.description
        return cell
    }
}
