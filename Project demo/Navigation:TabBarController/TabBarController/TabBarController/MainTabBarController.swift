//
//  MainTabBarController.swift
//  TabBarController
//
//  Created by ANJALI SHARMA R on 02/04/26.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        
    }
    
    private func setupTabs() {
        
        //creating viewControllers
        let homeVC = HomeViewController()
        let profileVC = ProfileViewController()
        let searchVC = SearchViewController()
        let messagesVC = MessagesViewController()
        
        //Wrapping in navigation controllers
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: searchVC)
        let nav4 = UINavigationController(rootViewController: profileVC)
        let nav3 = UINavigationController(rootViewController: messagesVC)
        
        //defining tabBarItem for each childViewControllers
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        nav2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(systemName: "paperplane.fill"), tag: 3)
        
        self.viewControllers = [nav1, nav2, nav3, nav4]
        
        
        //Setting the tab bar's colors 
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .systemBackground
        
        
    }
}
