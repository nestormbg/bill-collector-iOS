//
//  CardView.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-10-19.
//

import UIKit

class CardView: UIView {
    var coinsImageView: UIImageView = {
        var coinsImageView = UIImageView()
        coinsImageView.image = UIImage(named: "coins")
        coinsImageView.translatesAutoresizingMaskIntoConstraints = false
        return coinsImageView
    }()
    
    var container: UIStackView = {
        let container = UIStackView()
        container.axis = .horizontal
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    var monthlyIncome: UILabel = {
        var monthlyIncome = UILabel()
        monthlyIncome.text = "total"
        monthlyIncome.font = UIFont(name: "DamascusBold", size: 16.0)
        monthlyIncome.textColor = AppTheme.primaryTextColor
        return monthlyIncome
    }()
    
    var amount: UILabel = {
        var amount = UILabel()
        amount.text = "$ 0"
        amount.font = UIFont(name: "DamascusBold", size: 26.0)
        amount.textColor = AppTheme.primaryTextColor
        
        return amount
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = AppTheme.cardProfile
        layer.borderWidth = 0.5
        layer.borderColor = AppTheme.primaryTextColor.cgColor
        self.addSubview(container)
        container.addArrangedSubview(coinsImageView)
        container.addArrangedSubview(monthlyIncome)
        container.alignment = .center
        container.spacing = 5
        self.addSubview(amount)
        self.monthlyIncome.translatesAutoresizingMaskIntoConstraints = false
        self.amount.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.container.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.container.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.container.widthAnchor.constraint(equalToConstant: 200),
            
            self.monthlyIncome.heightAnchor.constraint(equalToConstant: 20),
            
            self.coinsImageView.widthAnchor.constraint(equalToConstant: 30),
            self.coinsImageView.heightAnchor.constraint(equalToConstant: 30),
                                    
            self.amount.topAnchor.constraint(equalTo: self.container.bottomAnchor, constant: 10),
            self.amount.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.amount.widthAnchor.constraint(equalToConstant: 200),
            self.amount.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
