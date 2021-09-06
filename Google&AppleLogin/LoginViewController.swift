//
//  LoginViewController.swift
//  Google&AppleLogin
//
//  Created by 김승찬 on 2021/09/06.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailLoginButton: UIButton!
    @IBOutlet weak var googleLoginButton: UIButton!
    @IBOutlet weak var appleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        attributeButtons()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
        //Navigation Bar 숨기기
        navigationController?.navigationBar.isHidden = true
    }
    @IBAction func googleLoginButtonTapped(_ sender: Any) {
        //FireBase 인증
    }
    @IBAction func appleLoginButtonTapped(_ sender: Any) {
        //FireBase 인증
    }
    
    private func attributeButtons() {
        [emailLoginButton, googleLoginButton, appleLoginButton].forEach {
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.layer.cornerRadius = 30
        }
    }
}
