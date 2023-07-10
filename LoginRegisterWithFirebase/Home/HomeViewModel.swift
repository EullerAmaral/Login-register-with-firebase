//
//  LoginViewModel.swift
//  LoginRegisterWithFirebase
//
//  Created by Iphone on 09/07/23.
//

import UIKit
import Firebase

protocol HomeViewModelProtocol: AnyObject {
    func sucessLogin()
    func errorLogin(errorMessage: String)
}

class HomeViewModel {
    
    private weak var delegate: HomeViewModelProtocol?
    
    public func delegate(delegate: HomeViewModelProtocol?) {
        self.delegate = delegate
    }

    private var auth = Auth.auth()
    
    public func login(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("Sucesso login")
                self.delegate?.sucessLogin()
            } else {
                print("Error login, error: \(error?.localizedDescription ?? "")")
                self.delegate?.errorLogin(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
    
    public func registerUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                print("Sucesso register")
            } else {
                print("Error register, error: \(error?.localizedDescription ?? "")")
            }
        }
    }
    
}
