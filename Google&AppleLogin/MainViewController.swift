//
//  MainViewController.swift
//  Google&AppleLogin
//
//  Created by 김승찬 on 2021/09/06.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        initNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hiddenNavigationBar()
        registerCurrentUser()
    }
    
    private func initNavigationBar() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    private func hiddenNavigationBar() {
        navigationController?.navigationBar.isHidden = true
    }
    
    private func registerCurrentUser() {
        let email = Auth.auth().currentUser?.email ?? "고객"
        welcomeLabel.text = """
        환영합니다.
        \(email)님
        """
    }
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            self.navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error: signout \(signOutError.localizedDescription)")
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
