//
//  ViewController.swift
//  TabView2
//
//  Created by Rodrigo Torres on 06/05/2021.
//

import UIKit

class LoginVC: UIViewController {

    let stackViewButtons = UIStackView()
    let stackViewTxtFld = UIStackView()
    let labelTitle = UILabel()
    
    
    let usernameTxtField : CustomTxtField = {
        let textField = CustomTxtField(placeholder: "Ingrese su usuario", colorTxt: .black)
        return textField
    }()
    
    
    let passwordTxtField : CustomTxtField = {
        let textField = CustomTxtField(placeholder: "Ingrese su contraseña", colorTxt: .black)
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI(title: "Autenticacion")
    }
    
    
    
    // MARK: Setup User Interface
    
    private func setupUI(title titleName: String) {
        view.backgroundColor = .white
        title = titleName
        addlabelTitle()
        addStackViewTxtFld()
        addStackViewButtons()
    }

    
    // MARK: Setup Stack View of TextField

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
        stackViewTxtFld.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 32).isActive                                                       = true
        stackViewTxtFld.centerXAnchor.constraint(equalTo: labelTitle.centerXAnchor).isActive                                                                = true
        stackViewTxtFld.heightAnchor.constraint(equalToConstant: 70).isActive                                                                               = true
        stackViewTxtFld.widthAnchor.constraint(equalToConstant: 200).isActive                                                                               = true
    }
    
    
    
    // MARK: Setup Stack View of Buttons
    
    private func addStackViewButtons() {
        view.addSubview(stackViewButtons)
        stackViewButtons.axis          = .vertical
        stackViewButtons.distribution  = .fillEqually
        stackViewButtons.spacing       = 15
        
        addButton()
        setupButtonsConstrainsStackView()
    }
    
    private func addButton() {
        
        //Setup Buttons
        let butChangeVC : CustomButton = {
            let button = CustomButton(title: "Registrarse", colorBG: .blue, colorTxt: .white)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        
        let butChange2 : CustomButton = {
            let button = CustomButton(title: "Ya tengo cuenta",colorBG: .white, colorTxt: .blue)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(changeVC), for: .touchUpInside)
            return button
        }()
        
        //Add buttons to Stack View
        stackViewButtons.addArrangedSubview(butChangeVC)
        stackViewButtons.addArrangedSubview(butChange2)
        
    }
    
    private func setupButtonsConstrainsStackView() {
        stackViewButtons.translatesAutoresizingMaskIntoConstraints = false
        stackViewButtons.topAnchor.constraint(equalTo: stackViewTxtFld.bottomAnchor, constant: 32).isActive                                             = true
        stackViewButtons.centerXAnchor.constraint(equalTo: stackViewTxtFld.centerXAnchor).isActive                                                      = true
        stackViewButtons.heightAnchor.constraint(equalToConstant: 100).isActive                                                                         = true
        stackViewButtons.widthAnchor.constraint(equalToConstant: 150).isActive                                                                          = true
    }    
        
    // MARK: Setup Label Title
    
    private func addlabelTitle() {
        view.addSubview(labelTitle)
        labelTitle.text = "Bienvendido, inicia sesion o registrate"
        labelTitle.numberOfLines = 1
        labelTitle.font = UIFont.boldSystemFont(ofSize: 16)
        labelTitle.textColor = .blue
        
        setupConstrainsLabelTitle()
    }
    
    private func setupConstrainsLabelTitle() {
        labelTitle.translatesAutoresizingMaskIntoConstraints                                                                                            = false
        labelTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive                                             = true
        labelTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive                                                                       = true
        labelTitle.heightAnchor.constraint(equalToConstant: 20).isActive                                                                                = true
    }
    // MARK: Functions
    
    @objc func changeVC() {
        let vc = RegisterVC() 
        navigationController?.pushViewController(vc, animated: true)
    }

}

