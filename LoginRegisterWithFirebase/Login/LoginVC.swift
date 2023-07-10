//
//  LoginVC.swift
//  Login screen with firebase
//
//  Created by Iphone on 10/06/23.
//

import UIKit

class LoginVC: UIViewController {

    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}
