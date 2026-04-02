//
//  SearchViewController.swift
//  TabBarController
//
//  Created by ANJALI SHARMA R on 02/04/26.
//

import UIKit

class SearchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        self.title = "Search"
        
        print("Search - viewDidLoad called - loaded in the memory")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Search - viewDidAppear called - displayed on the screen")
    }
   
    }
