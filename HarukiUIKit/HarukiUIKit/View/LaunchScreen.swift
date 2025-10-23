//
//  SingUp.swift
//  BeautyLinkUIKit
//
//  Created by user on 18.10.25.
//

import UIKit
import SnapKit

class LaunchScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        topPart()
        bottomPart()
    }
    
    private lazy var stack0 = UIStackView.createStack(axis: .horizontal, spacing: 15)
    
    private lazy var stack1 = UIStackView.createStack(axis: .vertical, spacing: 20)
    private lazy var stack2 = UIStackView.createStack(axis: .vertical, spacing: 20)
    private lazy var stack3 = UIStackView.createStack(axis: .vertical, spacing: 20)
    
    private lazy var smallView1 = UIView.createView(color: .lightBlueApp, radius: 20)
    private lazy var smallView2 = UIView.createView(color: .lightBlueApp, radius: 20)
    private lazy var smallView3 = UIView.createView(color: .lightBlueApp, radius: 20)
    
    private lazy var smallView4 = UIView.createView(color: .lightBlueApp, radius: 20)
    private lazy var smallView5 = UIView.createView(color: .lightBlueApp, radius: 20)
    private lazy var smallView6 = UIView.createView(color: .lightBlueApp, radius: 20)
    
    private lazy var smallView7 = UIView.createView(color: .lightBlueApp, radius: 20)
    private lazy var smallView8 = UIView.createView(color: .lightBlueApp, radius: 20)
    private lazy var smallView9 = UIView.createView(color: .lightBlueApp, radius: 20)
        
    
    func topPart() {
        view.addSubview(stack0)
        stack0.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(450)
//            make.height.equalTo(view.snp.height)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
        
        for each in [stack1, stack2, stack3] {
            stack0.addArrangedSubview(each)
            each.topAnchor.constraint(equalTo: stack0.topAnchor).isActive = true
            each.widthAnchor.constraint(equalToConstant: view.frame.width/3 - 25).isActive = true
        }
        
        for each in [smallView1, smallView2, smallView3, smallView4, smallView5, smallView6, smallView7, smallView8, smallView9] {
            let imageView = UIImageView.createUIImageView(image: "HarukiIcon")
            each.addSubview(imageView)
            imageView.snp.makeConstraints { (make) -> Void in
                make.center.equalTo(each.snp.center)
            }        }
        
        
        for each in [smallView1, smallView2, smallView3] {
            stack1.addArrangedSubview(each)
            each.snp.makeConstraints { (make) -> Void in
                make.width.equalTo(stack1.snp.width)
                make.height.equalTo(130)
            }
        }
        for each in [smallView4, smallView5, smallView6] {
            stack2.addArrangedSubview(each)
            each.snp.makeConstraints { (make) -> Void in
                make.width.equalTo(stack1.snp.width)
                make.height.equalTo(170)
            }
        }
        for each in [smallView7, smallView8, smallView9] {
            stack3.addArrangedSubview(each)
            each.snp.makeConstraints { (make) -> Void in
                make.width.equalTo(stack1.snp.width)
                make.height.equalTo(130)
            }
        }
    }
    
    private lazy var stack4 = UIStackView.createStack(axis: .vertical, spacing: 20)
    
    private lazy var icon = UIView.createView(color: .blueApp, radius: 40)
    
    private lazy var letterH = UILabel.createUILabel(text: "H", font: .systemFont(ofSize: 28, weight: .bold), color: .white)
    
    private lazy var labelName = UILabel.createUILabel(text: "Добро пожаловать в Haruki", font: .systemFont(ofSize: 24))
    
    private lazy var button1 = UIButton.createUIButton(title: "Войти", textSet: .systemFont(ofSize: 18, weight: .bold))
    private lazy var button2 = UIButton.createUIButton(title: "Зарегистрироваться", colorText: .black, textSet: .systemFont(ofSize: 18, weight: .bold), colorBack: .clear, colorborder: .gray)
    
    func bottomPart() {
        view.addSubview(stack4)
        stack4.topAnchor.constraint(equalTo: stack0.bottomAnchor, constant: 20).isActive = true
        stack4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        stack4.addArrangedSubview(icon)
        icon.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(80)
        }
        icon.addSubview(letterH)
        letterH.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(icon.snp.center)
        }
        
        stack4.addArrangedSubview(labelName)
        stack4.addArrangedSubview(button1)
        button1.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(56)
            make.leading.equalTo(view).offset(25)
            make.trailing.equalTo(view).offset(-25)
        }
        button1.addTarget(self, action: #selector(goToLogIn), for: .touchUpInside)
        
        stack4.addArrangedSubview(button2)
        button2.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(56)
            make.leading.equalTo(view).offset(25)
            make.trailing.equalTo(view).offset(-25)
        }
        button2.addTarget(self, action: #selector(goToLogIn), for: .touchUpInside)
    }
    
    @objc func goToLogIn() {
        let logIn = LogIn()
        navigationController?.pushViewController(logIn, animated: true)
    }
}

#Preview {
    LaunchScreen()
}
