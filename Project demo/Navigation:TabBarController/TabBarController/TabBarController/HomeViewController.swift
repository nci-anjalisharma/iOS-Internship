//
//  ViewController.swift
//  TabBarController
//
//  Created by ANJALI SHARMA R on 02/04/26.


//THIS IS A CHILD CLASS

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        self.title = "Home"
        print("Home Screen: viewDidLoad() called - loaded in memory")
        
        let label = UILabel()
        
        label.text = "Home Screen"
        label.textColor = .label
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 216)
        label.center = view.center
        
        view.addSubview(label)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        print("Home Screen: viewDidAppear() called - loaded and displayed on screen")
        
    }
    
     

}

