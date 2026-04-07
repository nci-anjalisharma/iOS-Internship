//
//  SplashViewController.swift
//  news.com.au_skeleton
//
//  Created by ANJALI SHARMA R on 07/04/26.
//

import UIKit
import SnapKit


class SplashViewController: UIViewController {
    
    
    private lazy var logoImageView: UIImageView = {
        
        let iv = UIImageView()
        
        iv.image = UIImage(named: "App logo") ?? UIImage(systemName: "newspaper.circle.fill")
        iv.contentMode = .scaleAspectFit
        iv.backgroundColor = .systemRed
        
        
        return iv
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setUpLayout()
        startSplashAnimation()
        
        
    }
    

    private func setUpLayout() {
        
        view.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { make in
            
            make.center.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.4)   //40% of the screen
            make.height.equalTo(logoImageView.snp.width)
            }
    }
    
    
    private func startSplashAnimation(){
        
        UIView.animate(withDuration: 0.8, delay: 0.2, options: .curveEaseInOut, animations: {
            self.logoImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) {_ in
            // redirecting to Home Page
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {[weak self] in
                self?.navigateToLogin()
            }
        }
    }
    
    private func navigateToLogin(){
        
        let LoginVC = LoginScreenViewController()
        LoginVC.modalPresentationStyle = .fullScreen
        LoginVC.modalTransitionStyle = .crossDissolve
        
        if let window = self.view.window {
            window.rootViewController = LoginVC
            UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil)
        }
    }
}
