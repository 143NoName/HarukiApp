//
//  SingUp.swift
//  HarukiUIKit
//
//  Created by user on 20.10.25.
//

import UIKit
import SnapKit


class SingUpEmail: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.titleView = pageName
        
        topPart()
        buttomPart()
    }
    
    private lazy var cancelButton = UIButton.btnImage(image: "cancel")
    private lazy var pageName = UILabel.createUILabel(text: "Войти", font: .systemFont(ofSize: 16, weight: .semibold))
    
    private lazy var textFieldLabel = UILabel.createUILabel(text: "Какой у вас Email?", font: .systemFont(ofSize: 24, weight: .bold))
    private lazy var enterEmail = UITextField.createUITextField(placeholder: "Email", textSet: .systemFont(ofSize: 22, weight: .bold))

    func topPart() {
        view.addSubview(textFieldLabel)
        textFieldLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalTo(view.snp.leading).offset(25)
        }
        
        view.addSubview(enterEmail)
        enterEmail.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(textFieldLabel.snp.bottom).offset(25)
            make.leading.equalTo(view.snp.leading).offset(25)
        }
    }
    
    private lazy var stepNum = UILabel.createUILabel(text: "1 из 3", font: .systemFont(ofSize: 16, weight: .semibold))
    private lazy var progressLine1 = UIView.createView(color: .noProgress, radius: 4)
    private lazy var progressLine2 = UIView.createView(color: .progress, radius: 4)
    private lazy var nextButtom = UIButton.createUIButton(title: "Далее")
    

    
    func buttomPart() {
        let wigth = (view.frame.width - 50) * 1/3
        
        view.addSubview(stepNum)
        stepNum.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-120)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
        }
        
        
        view.addSubview(progressLine1)
        progressLine1.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(stepNum.snp.bottom).offset(20)
            make.height.equalTo(8)
            make.leading.equalTo(view.snp.leading).offset(25)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
        }
        
        progressLine1.addSubview(progressLine2)
        progressLine2.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(progressLine1.snp.height)
            make.width.equalTo(wigth)
        }
        
        view.addSubview(nextButtom)
        nextButtom.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(progressLine2.snp.bottom).offset(20)
            make.leading.equalTo(view.snp.leading).offset(25)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
            make.height.equalTo(56)
        }
        
        nextButtom.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
    }
    
    @objc func goToNext() {
        let passwordView = SingUpPassword()
        navigationController?.pushViewController(passwordView, animated: true)
    }
    
    @objc func navBack() {
        navigationController?.popViewController(animated: true)
    }
}

#Preview {
    SingUpEmail()
}



// <----------------------------------------------------------------------------------------------------> //



class SingUpPassword: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.titleView = pageName
             
        topPart()
        buttomPart()
    }
    
    private lazy var cancelButton = UIButton.btnImage(image: "back")
    private lazy var pageName = UILabel.createUILabel(text: "Войти", font: .systemFont(ofSize: 16, weight: .semibold))
    
    private lazy var textFieldLabel = UILabel.createUILabel(text: "Создайте пароль", font: .systemFont(ofSize: 24, weight: .bold))
    private lazy var enterEmail = UITextField.createUITextField(placeholder: "Пароль", textSet: .systemFont(ofSize: 22, weight: .bold))
    
    
    private lazy var labelShowPassword = UILabel.createUILabel(text: "Показать пароль")

    func topPart() {
    view.addSubview(textFieldLabel)
    textFieldLabel.snp.makeConstraints { (make) -> Void in
        make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
        make.leading.equalTo(view.snp.leading).offset(25)
    }
    
    view.addSubview(enterEmail)
    enterEmail.snp.makeConstraints { (make) -> Void in
        make.top.equalTo(textFieldLabel.snp.bottom).offset(25)
        make.leading.equalTo(view.snp.leading).offset(25)
    }
}
    
    private lazy var stepNum = UILabel.createUILabel(text: "2 из 3", font: .systemFont(ofSize: 16, weight: .semibold))
    private lazy var progressLine1 = UIView.createView(color: .noProgress, radius: 4)
    private lazy var progressLine2 = UIView.createView(color: .progress, radius: 4)
    private lazy var nextButtom = UIButton.createUIButton(title: "Далее")
    

    
    func buttomPart() {
        let wigth = (view.frame.width - 50) * 2/3
        
        view.addSubview(stepNum)
        stepNum.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-120)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
        }
        
        view.addSubview(progressLine1)
        progressLine1.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(stepNum.snp.bottom).offset(20)
            make.height.equalTo(8)
            make.leading.equalTo(view.snp.leading).offset(25)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
        }
        
        progressLine1.addSubview(progressLine2)
        progressLine2.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(progressLine1.snp.height)
            make.width.equalTo(wigth)
        }
        
        view.addSubview(nextButtom)
        nextButtom.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(progressLine2.snp.bottom).offset(20)
            make.leading.equalTo(view.snp.leading).offset(25)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
            make.height.equalTo(56)
        }
        
        nextButtom.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
    }
    
    @objc func goToNext() {
        let age = SingUpAge()
        navigationController?.pushViewController(age, animated: true)
    }
    
    @objc func navBack() {
        navigationController?.popViewController(animated: true)
    }
}

#Preview {
    SingUpPassword()
}



// <----------------------------------------------------------------------------------------------------> //



class SingUpAge: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.titleView = pageName
        
        topPart()
        buttomPart()
    }
    
    private lazy var pageName = UILabel.createUILabel(text: "Войти", font: .systemFont(ofSize: 16, weight: .semibold))

    private lazy var nameLabel = UILabel.createUILabel(text: "Привет, Haruki")
    private lazy var nameImage = UIImageView.createUIImageView(image: "name")
    
    private lazy var textFieldLabel = UILabel.createUILabel(text: "Сколько вам лет", font: .systemFont(ofSize: 24, weight: .bold))
    private lazy var enterEmail = UITextField.createUITextField(placeholder: "Возраст", textSet: .systemFont(ofSize: 22, weight: .bold))
    
    
    private lazy var labelShowPassword = UILabel.createUILabel(text: "Показать пароль")


    
    func topPart() {
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(25)
            make.leading.equalTo(view.snp.leading).offset(25)
        }
        
        view.addSubview(nameImage)
        nameImage.snp.makeConstraints { (make) -> Void in
            make.centerY.equalTo(nameLabel.snp.centerY)
            make.leading.equalTo(nameLabel.snp.trailing).offset(10)
        }
        
        view.addSubview(textFieldLabel)
        textFieldLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(nameLabel.snp.top).offset(20)
            make.leading.equalTo(view.snp.leading).offset(25)
        }
        
        view.addSubview(enterEmail)
        enterEmail.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(textFieldLabel.snp.bottom).offset(25)
            make.leading.equalTo(view.snp.leading).offset(25)
        }
    }
    
    private lazy var stepNum = UILabel.createUILabel(text: "3 из 3", font: .systemFont(ofSize: 16, weight: .semibold))
    private lazy var progressLine1 = UIView.createView(color: .noProgress, radius: 4)
    private lazy var progressLine2 = UIView.createView(color: .progress, radius: 4)
    private lazy var nextButtom = UIButton.createUIButton(title: "Далее")
    

    
    func buttomPart() {
        let wigth = view.frame.width - 50
        
        view.addSubview(stepNum)
        stepNum.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-120)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
        }
        
        view.addSubview(progressLine1)
        progressLine1.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(stepNum.snp.bottom).offset(20)
            make.height.equalTo(8)
            make.leading.equalTo(view.snp.leading).offset(25)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
        }
        
        progressLine1.addSubview(progressLine2)
        progressLine2.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(progressLine1.snp.height)
            make.width.equalTo(wigth)
        }
        
        view.addSubview(nextButtom)
        nextButtom.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(progressLine2.snp.bottom).offset(20)
            make.leading.equalTo(view.snp.leading).offset(25)
            make.trailing.equalTo(view.snp.trailing).offset(-25)
            make.height.equalTo(56)
        }
    }
    
    @objc func navBack() {
        navigationController?.popViewController(animated: true)
    }
}

#Preview {
    SingUpAge()
}
