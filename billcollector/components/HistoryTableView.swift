//
//  HistoryTableView.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-10-20.
//

import UIKit

class HistoryTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        layer.cornerRadius = 20.0
        bounces = false
        backgroundColor = AppTheme.screenBackgroundColor
    }
}
