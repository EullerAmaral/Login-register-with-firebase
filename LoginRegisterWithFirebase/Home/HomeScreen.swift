//
//  HomeScreen.swift
//  Login screen with firebase
//
//  Created by Iphone on 06/06/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func actionLoginButton()
    func actionRegisterButton()
}

class HomeScreen: UIView {
    
    weak var delegate: HomeScreenProtocol?
    func delegate(delegate: HomeScreenProtocol?) {
        self.delegate = delegate
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpBackGroundColor()
        addAllElements()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpBackGroundColor(){
        backgroundColor = UIColor(cgColor: CGColor(red: 255/255, green: 255/255, blue: 170/255, alpha: 1.0))
    }
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "AppleLogo")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var userTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.keyboardType = .emailAddress
        textField.placeholder = "User"
        textField.textColor = .darkGray
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = true
        textField.keyboardType = .numberPad
        textField.placeholder = "Password"
        textField.textColor = .darkGray
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.backgroundColor = UIColor(cgColor: CGColor(red: 255/255, green: 204/255, blue: 80/255, alpha: 1.0))
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.layer.borderColor = CGColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLoginButton(){
        self.delegate?.actionLoginButton()
    }
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.italicSystemFont(ofSize: 15)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedRegisterButton(){
        self.delegate?.actionRegisterButton()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            image.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 150),
            image.widthAnchor.constraint(equalToConstant: 150),
            
            userTextField.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 50),
            userTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
            userTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -19),
            userTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 14),
            passwordTextField.leadingAnchor.constraint(equalTo: userTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: userTextField.heightAnchor),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 39),
            loginButton.leadingAnchor.constraint(equalTo: userTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 7),
            registerButton.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: userTextField.heightAnchor)

        ])
    }
    
    func addAllElements(){
        addSubview(userTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(registerButton)
        addSubview(image)
    }
    
}


