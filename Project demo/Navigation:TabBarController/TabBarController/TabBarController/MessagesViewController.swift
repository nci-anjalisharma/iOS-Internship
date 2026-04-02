//
//  ReelsViewController.swift
//  TabBarController
//
//  Created by ANJALI SHARMA R on 02/04/26.
//

import UIKit

class MessagesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        self.title = "Reels"
        
        print("Reels Section: viewDidLoad called - loaded in the memory")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Reels Section: viewDidAppear called - loaded and displayed on the screen")
    }
}
