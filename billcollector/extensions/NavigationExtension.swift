//
//  NavigationExtension.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-11-02.
//

import Foundation
import UIKit

extension UINavigationController {
    func setDefaultNavigationBar() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
