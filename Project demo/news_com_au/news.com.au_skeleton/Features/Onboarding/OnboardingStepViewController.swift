//
//  OnboardingStepViewController.swift
//  news.com.au_skeleton
//
//  Created by ANJALI SHARMA R on 07/04/26.
//

import UIKit
import SnapKit

class OnboardingStepViewController: UIViewController {
    
    init(title: String, color: UIColor) {
        
        super.init(nibName: nil, bundle: nil)
        
        self.view.backgroundColor = color
        
        let label = UILabel()
        label.text = title
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        view.addSubview(label)
        
        label.snp.makeConstraints { $0.center.equalToSuperview() }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
