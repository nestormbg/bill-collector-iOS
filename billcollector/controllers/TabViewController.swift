//
//  TabViewController.swift
//  billcollector
//
//  Created by Néstor Miguel Benitez Garay on 2023-10-19.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()
        self.setupTabBar()
    }
    
    private func setupTabs() {
        let home = self.createNav(with: "Home", and: UIImage(named: "home"), vc: HomeViewController())
        let workout = self.createNav(with: "Calendar", and: UIImage(named: "calendar"), vc: HistoryViewController())
        let exercise = self.createNav(with: "Charts", and: UIImage(named: "chart_pie"), vc: ExerciseViewController())
        
        self.setViewControllers([home, workout, exercise], animated: true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        
        nav.tabBarItem.image = image
        nav.navigationBar.backgroundColor = AppTheme.clear
        nav.viewControllers.first?.navigationItem.title = ""
        
        return nav
    }
    
    private func setupTabBar() {
        self.tabBar.backgroundColor = AppTheme.tabBarBackgroundColor
        self.tabBar.tintColor = AppTheme.selectedItemColor
        self.tabBar.unselectedItemTintColor = AppTheme.unselectedItemColor
        self.tabBar.dropShadow()
    }
   

}
