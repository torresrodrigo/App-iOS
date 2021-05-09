//
//  RegisterVC.swift
//  TabView2
//
//  Created by Rodrigo Torres on 06/05/2021.
//

import UIKit

class RegisterVC: UIViewController {

    
    var titleLabel = UILabel()
    var stackViewTxtFld = UIStackView()
    
    let usernameTxtField : CustomTxtField = {
        let textField = CustomTxtField(placeholder: "Ingrese su usuario", colorTxt: .black)
        return textField
    }()
    
    
    let passwordTxtField : CustomTxtField = {
        let textField = CustomTxtField(placeholder: "Ingrese su contraseña", colorTxt: .black)
        return textField
    }()
    
    let butChangeVC : CustomButton = {
        let button = CustomButton(title: "Registrarse", colorBG: .blue, colorTxt: .white)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationItem.title = "Iniciar Sesion"
        view.backgroundColor = .white
        
        setupUI()
    }
    
    
    // MARK: Setup User Interface
    
    private func setupUI() {
        addlabelTitle()
        addStackViewTxtFld()
        addButtons()
    }
    
    
    // MARK: Setup Label Title
    
    private func addlabelTitle() {
        view.addSubview(titleLabel)
        
        titleLabel.text = "Ingresa tus datos"
        titleLabel.numberOfLines = 1
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.textColor = .blue
        
        setupConstrainsTitleLabel()
    }
    
    private func setupConstrainsTitleLabel() {
       titleLabel.translatesAutoresizingMaskIntoConstraints                                                                                            = false
       titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive                                             = true
       titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive                                                                       = true
       titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive                                                                                = true
    }
    
    // MARK: Setup StackView TextField
    
    private func addStackViewTxtFld() {
        view.addSubview(stackViewTxtFld)
        stackViewTxtFld.axis            = .vertical
        stackViewTxtFld.distribution    = .fillEqually
        stackViewTxtFld.spacing         = 15
        
        addTxtFld()
        setupConstraintsTxtFieldStackView()
    }
    
  
    
    private func addTxtFld() {
        
        stackViewTxtFld.addArrangedSubview(usernameTxtField)
        stackViewTxtFld.addArrangedSubview(passwordTxtField)
        
    }
    
    private func setupConstraintsTxtFieldStackView() {
        stackViewTxtFld.translatesAutoresizingMaskIntoConstraints                                                                                           = false
        stackViewTxtFld.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32).isActive                                                       = true
        stackViewTxtFld.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive                                                                = true
        stackViewTxtFld.heightAnchor.constraint(equalToConstant: 70).isActive                                                                               = true
        stackViewTxtFld.widthAnchor.constraint(equalToConstant: 200).isActive                                                                               = true
    }
    
    
    // MARK: Setup Buttons
    
    
    private func addButtons() {
        view.addSubview(butChangeVC)
        setupButtonsConstraints()
    }
    
    private func setupButtonsConstraints() {
       
        butChangeVC.topAnchor.constraint(equalTo: stackViewTxtFld.bottomAnchor, constant: 32).isActive                                             = true
        butChangeVC.centerXAnchor.constraint(equalTo: stackViewTxtFld.centerXAnchor).isActive                                                      = true
        butChangeVC.heightAnchor.constraint(equalToConstant: 40).isActive                                                                         = true
        butChangeVC.widthAnchor.constraint(equalToConstant: 130).isActive                                                                          = true
    }
    
    
    
    
}
