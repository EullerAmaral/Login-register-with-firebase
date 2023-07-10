//
//  ViewController.swift
//  Login screen with firebase
//
//  Created by Iphone on 06/06/23.
//

import UIKit

class HomeVC: UIViewController {
    
    private var homeScreen: HomeScreen?
    private var viewModel: HomeViewModel = HomeViewModel()

    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
    }
    
}

extension HomeVC: HomeViewModelProtocol {
    
    func sucessLogin() {
        let vc: LoginVC = LoginVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func errorLogin(errorMessage: String) {
        print(#function)
        Alert(controller: self).showAlertInformation(title: "Error login", message: errorMessage)
    }
    
}

extension HomeVC: HomeScreenProtocol {

    func actionLoginButton() {

        viewModel.login(email: homeScreen?.userTextField.text ?? "", password: homeScreen?.passwordTextField.text ?? "")
        
    }
    
    func actionRegisterButton() {
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)

        viewModel.registerUser(email: homeScreen?.userTextField.text ?? "", password: homeScreen?.passwordTextField.text ?? "")
    }
    
}

