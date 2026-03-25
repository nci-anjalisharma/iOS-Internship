//
//  ViewController.swift
//  ALC
//
//  Created by ANJALI SHARMA R on 25/03/26.
//

import UIKit


protocol ScoreDelegate: AnyObject {
    func didResetScore(to newScore: Int)
}



class ViewController: UIViewController {

   override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad: The card is created in memory.")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2. viewWillAppear: The card is about to slide onto the screen.")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3. viewDidAppear: The user can now read the card!")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // This connects the phone line right as the screen transitions
        if let destinationVC = segue.destination as? SettingsViewController {
            destinationVC.delegate = self
            print("Lifecycle: Handshake complete. MainVC is now the delegate.")
        }
    }
}

extension ViewController: ScoreDelegate {
    func didResetScore(to newScore: Int) {
        print("Delegate: The second screen told me to reset the score to \(newScore)!")
    }
}
