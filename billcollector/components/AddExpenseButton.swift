//
//  AddExpenseButton.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-10-19.
//

import UIKit

class AddExpenseButton: UIButton {
    var buttonPressedCallBack: (() -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = AppTheme.primaryTextColor
        self.setImage(UIImage(named: "pencil")?.withTintColor(UIColor.white), for: .normal)
        self.layer.cornerRadius = 30.0
        self.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
    }
    
    @objc private func buttonPressed() {
        self.buttonPressedCallBack?()
    }
}
