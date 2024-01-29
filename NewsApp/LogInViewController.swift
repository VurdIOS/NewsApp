//
//  ViewController.swift
//  NewsApp
//
//  Created by Камаль Атавалиев on 29.01.2024.
//

import UIKit

class LogInViewController: UIViewController {
    // Фоновая картинка
    lazy var backgroundView: UIImageView = {
       let image = UIImageView(image: UIImage(named: "LogInVCBackground"))
        image.clipsToBounds = true
        image.contentMode = .scaleToFill
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "Добро пожаловать в NEWS APP"
        label.font = UIFont(name: "Raleway-Bold", size: 52)
        label.numberOfLines = 3
        label.textColor = .white
      
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    let registrationButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Начать пользоваться", for: .normal)
        btn.backgroundColor = .white
        btn.setTitleColor(.accent, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 14
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        return btn
    }()
    
    let logInButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Есть профиль? Войти", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
        
        
        
        
        
//        Првоерять наличие шрифта
//        for family in UIFont.familyNames.sorted() {
//            let names = UIFont.fontNames(forFamilyName: family)
//            print("Family: \(family) Font names: \(names)")
//        }
    }
    
    private func setupUI() {
        view.addSubview(backgroundView)
        view.addSubview(greetingLabel)
        view.addSubview(registrationButton)
        view.addSubview(logInButton)
        
        // Фоновая картинка
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            greetingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            greetingLabel.bottomAnchor.constraint(equalTo: registrationButton.topAnchor, constant: -32)
        ])
        
        NSLayoutConstraint.activate([
            registrationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registrationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            registrationButton.bottomAnchor.constraint(equalTo: logInButton.topAnchor, constant: -37),
            registrationButton.heightAnchor.constraint(equalToConstant: 64)
        ])
        
        NSLayoutConstraint.activate([
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
        ])
        
        
    }


}

