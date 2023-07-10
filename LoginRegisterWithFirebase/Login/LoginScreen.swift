//
//  LoginScreen.swift
//  Login screen with firebase
//
//  Created by Iphone on 10/06/23.
//

import UIKit

class LoginScreen: UIView {

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
    
    lazy var loginOkLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login succeeded"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()
    
    func addAllElements(){
        addSubview(loginOkLabel)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            loginOkLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginOkLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        
        ])
    }
    
}
