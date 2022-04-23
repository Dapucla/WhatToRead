//
//  TabBarViewController.swift
//  WhatToRead
//
//  Created by Даниил Алексеев on 19.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }
    
    func setupVCs() {
        setViewControllers([createNavController(for: HomeVC(), title: NSLocalizedString("Поиск", comment: ""), image: UIImage(systemName: "house")),
                            createNavController(for: ViewController(), title: NSLocalizedString("Коллекция", comment: ""), image: UIImage(systemName: "doc.text.magnifyingglass")),
                            createNavController(for: ViewController(), title: NSLocalizedString("Профиль", comment: ""), image: UIImage(systemName: "person"))], animated: false)
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
    
        return navController
    }
}
