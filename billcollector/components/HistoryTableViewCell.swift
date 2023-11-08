//
//  TableViewCell.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-10-31.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    static let identifier = "HistoryTableViewCell"
    
    private let categoryImageView: UIImageView = {
        let categoryImageView = UIImageView()
        categoryImageView.contentMode = .scaleAspectFit
        categoryImageView.image = UIImage(systemName: "questionmark")
        return categoryImageView
    }()
    
    
}
