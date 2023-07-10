//
//  RegisterScreen.swift
//  Login screen with firebase
//
//  Created by Iphone on 11/06/23.
//

import UIKit

class RegisterScreen: UIView {

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
    
    lazy var registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Register"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.placeholder = "Name"
        textField.textColor = .darkGray
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        return textField
    }()
    
    lazy var lastNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.placeholder = "Last name"
        textField.textColor = .darkGray
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        return textField
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
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.backgroundColor = UIColor(cgColor: CGColor(red: 255/255, green: 204/255, blue: 80/255, alpha: 1.0))
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.layer.borderColor = CGColor.init(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedRegisterButton(){
//        self.delegate?.actionLoginButton()
    }
    
    func addAllElements(){
        addSubview(registerLabel)
        addSubview(nameTextField)
        addSubview(lastNameTextField)
        addSubview(userTextField)
        addSubview(passwordTextField)
        addSubview(image)
        addSubview(registerButton)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 150),
            image.widthAnchor.constraint(equalToConstant: 150),
            
            registerLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 50),
            registerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
            registerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -19),
            
            nameTextField.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 50),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -19),
            nameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            lastNameTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 9),
            lastNameTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            lastNameTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            lastNameTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            userTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 32),
            userTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            userTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            userTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),

            passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 9),
            passwordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),

            registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 32),
            registerButton.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),

        ])
    }
    
}
