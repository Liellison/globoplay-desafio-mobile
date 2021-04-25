//
//  ViewController.swift
//  GloboPlay
//
//  Created by Liellison Menezes on 25/04/21.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup view controllers
        let homeVC = Home()
        let listVC = List()
        
        // assing
        self.setViewControllers([homeVC, listVC], animated: false)
        
        // Setup title
        homeVC.title = NSLocalizedString("home", comment: "")
        homeVC.tabBarItem.image = UIImage(named: "home")
        listVC.title = NSLocalizedString("list", comment: "")
        listVC.tabBarItem.image = UIImage(named: "baseline_star_rate_black_24")
        
        self.tabBar.tintColor = .black
        
        MovieDao.getMovies("") { (movies) in
            print(movies.title)
        }
            
    }


}

