//
//  Untitled.swift
//  ALC
//
//  Created by ANJALI SHARMA R on 25/03/26.
//

import UIKit


class SettingsViewController: UIViewController {
    weak var delegate: ScoreDelegate? // The phone line

    @IBAction func resetPressed(_ sender: UIButton) {
        // Calling the first screen
        delegate?.didResetScore(to: 0)
        dismiss(animated: true)
    }
}
