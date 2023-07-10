//
//  RegisterVC.swift
//  Login screen with firebase
//
//  Created by Iphone on 11/06/23.
//

import UIKit

class RegisterVC: UIViewController {

    var screen: RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
