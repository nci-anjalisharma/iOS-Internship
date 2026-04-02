//
//  ProfileViewController.swift
//  TabBarController
//
//  Created by ANJALI SHARMA R on 02/04/26.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        self.title = "Profile"
        print("Profile Section - viewDidload called - loaded in the memory")
              
              
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Profile Section - viewDidAppear called - loaded and displayed on the screen")
              
        
    }
    

   
    }
