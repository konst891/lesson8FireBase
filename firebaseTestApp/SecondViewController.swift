//
//  SecondViewController.swift
//  firebaseTestApp
//
//  Created by Константин Надоненко on 26.01.2021.
//

import UIKit
import FirebaseAuth

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logoutButtonClicked(_ sender: UIButton) {
        
        do {
            try Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
        } catch (let error) {
            print("Auth sign out failed: \(error)")
        }
        
    }
}
