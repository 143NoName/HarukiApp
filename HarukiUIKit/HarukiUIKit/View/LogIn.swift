//
//  LogIn.swift
//  HarukiUIKit
//
//  Created by user on 19.10.25.
//

import UIKit
import SnapKit

class LogIn: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.titleView = pageName
        
        topPart()
        middleView()
    }
    
//    let backButton = UIBarButtonItem(customView: cancelButton)
    
    private lazy var backButton = UIButton.btnImage(image: "cancel")
//    private lazy var pageName = UILabel.createUILabel(text: "Войти", font: .systemFont(ofSize: 16, weight: .semibold))

    private lazy var cancelButton = UIBarButtonItem(customView: backButton)
    private lazy var pageName = UILabel.createUILabel(text: "Войти", font: .systemFont(ofSize: 18, weight: .semibold))

    
    private lazy var stackForBtn = UIStackView.createStack(axis: .vertical, spacing: 15)
    
    private lazy var btnFacebook = UIButton.createUIButton(title: "Продолжить с Facebook")
    private lazy var btnGoogle = UIButton.createUIButton(title: "Продолжить с Google")
    private lazy var btnApple = UIButton.createUIButton(title: "Продолжить с Apple")
    private lazy var labelOR = UILabel.createUILabel(text: "ИЛИ", font: .systemFont(ofSize: 16, weight: .bold))
    
    
    func topPart() {
        view.addSubview(stackForBtn)
        stackForBtn.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(25)
            make.leading.equalTo(view).offset(25)
            make.trailing.equalTo(view).offset(-25)
        }
        
        for each in [btnFacebook, btnGoogle, btnApple] {
            stackForBtn.addArrangedSubview(each)
            each.snp.makeConstraints { (make) -> Void in
                make.height.equalTo(56)
                make.width.equalTo(stackForBtn.snp.width)
            }
            each.addTarget(self, action: #selector(goToSingUp), for: .touchUpInside)
        }
        
        stackForBtn.addArrangedSubview(labelOR)
    }
    
    @objc func goToSingUp() {
        let singUp = SingUpEmail()
        navigationController?.pushViewController(singUp, animated: true)
    }
    
    private lazy var stackEmailAndPassword = UIStackView.createStack(axis: .vertical, spacing: 25)
    
    private lazy var stackForEmail = UIStackView.createStack(axis: .vertical, spacing: 15)
    private lazy var stackForPassword = UIStackView.createStack(axis: .vertical, spacing: 15)
    
    private lazy var emailLabel = UILabel.createUILabel(text: "Адрес электроной почты")
    private lazy var emailTextField = UITextField.createUITextField(placeholder: "Введите вашу почту", textSet: .systemFont(ofSize: 22, weight: .bold))
    private lazy var bottomBorder1 = UIView.createView(color: .lightGray, radius: 1)
    private lazy var passwordLabel = UILabel.createUILabel(text: "Пароль")
    private lazy var passwordTextField = UITextField.createUITextField(placeholder: "Введите ваш пароль", textSet: .systemFont(ofSize: 22, weight: .bold))
    private lazy var bottomBorder2 = UIView.createView(color: .gray, radius: 1)
    
    private lazy var showPassword = UIButton.btnImage(image: "showPassword")
    private lazy var buttonLogIn = UIButton.createUIButton(title: "Войти")
    
    // не добавлены пока что
    private lazy var labelUnder1 = UILabel.createUILabel(text: "Продолжая, вы соглашаетесь")
    private lazy var buttonUnder1 = UIButton.simpleButton(title: "Условия пользования")
    private lazy var labelUnder2 = UILabel.createUILabel(text: "и")
    private lazy var buttonUnder2 = UIButton.simpleButton(title: "Политика безопасности")
    // не добавлены пока что
    
    private lazy var forgotPasswordButton = UIButton.simpleButton(title: "Забыли ваш пароль?", colorText: .maintext, setTitle: .systemFont(ofSize: 16, weight: .bold))

    func middleView() {
        
        view.addSubview(stackEmailAndPassword)
        stackEmailAndPassword.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(stackForBtn.snp.bottom).offset(25)
            make.leading.equalTo(view).offset(25)
            make.trailing.equalTo(view).offset(-25)
        }
        
        stackEmailAndPassword.addArrangedSubview(stackForEmail)
        stackForEmail.widthAnchor.constraint(equalTo: stackEmailAndPassword.widthAnchor).isActive = true
        
        for each in [emailLabel, emailTextField] {
            stackForEmail.addArrangedSubview(each)
            each.widthAnchor.constraint(equalTo: stackForEmail.widthAnchor).isActive = true
        }
        
        stackEmailAndPassword.addArrangedSubview(stackForPassword)
        stackForPassword.widthAnchor.constraint(equalTo: stackEmailAndPassword.widthAnchor).isActive = true
        
        for each in [passwordLabel, passwordTextField] {
            stackForPassword.addArrangedSubview(each)
            each.widthAnchor.constraint(equalTo: stackForEmail.widthAnchor).isActive = true
        }

        emailTextField.addSubview(bottomBorder1)
        bottomBorder1.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(emailTextField.snp.width)
            make.height.equalTo(1)
            make.top.equalTo(emailTextField.snp.bottom).offset(5)
        }

        passwordTextField.addSubview(showPassword)
        showPassword.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(25)
            make.width.equalTo(25)
            make.trailing.equalTo(passwordTextField.snp.trailing)
            make.centerY.equalTo(passwordTextField.snp.centerY)
        }
        
        passwordTextField.addSubview(bottomBorder2)
        bottomBorder2.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(passwordTextField.snp.width)
            make.height.equalTo(1)
            make.top.equalTo(passwordTextField.snp.bottom).offset(5)
        }

        stackEmailAndPassword.addArrangedSubview(buttonLogIn)
        buttonLogIn.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(56)
            make.width.equalTo(stackForBtn.snp.width)
        }
        
        
        stackEmailAndPassword.addArrangedSubview(forgotPasswordButton)
        forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview {
    LogIn()
}
