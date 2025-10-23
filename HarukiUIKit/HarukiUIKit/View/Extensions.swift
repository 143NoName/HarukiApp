//
//  Extensions.swift
//  HarukiUIKit
//
//  Created by user on 18.10.25.
//

import UIKit

extension UIStackView {
    static func createStack(axis: NSLayoutConstraint.Axis = .horizontal, spacing: CGFloat = 0, alignment: UIStackView.Alignment = .center, color: UIColor = .clear) -> UIStackView {
        let stack = UIStackView()
        stack.axis = axis
        stack.spacing = spacing
        stack.alignment = alignment
        stack.backgroundColor = color
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }
}

extension UIView {
    static func createView(color: UIColor = .clear, radius: CGFloat = 0) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.layer.cornerRadius = radius
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}

extension UIImageView {
    static func createUIImageView(image i: String) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: i)
        image.contentMode = .center
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
}

extension UILabel {
    static func createUILabel(text: String, font: UIFont = .systemFont(ofSize: 16), color: UIColor = .maintext) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

extension UIButton {
    
    static func simpleButton(title: String, colorText: UIColor = .black, setTitle: UIFont = .systemFont(ofSize: 16, weight: .regular)) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(colorText, for: .normal)
        button.titleLabel?.font = setTitle
        return button
    }
    
    static func createUIButton(title: String, colorText: UIColor = .white, textSet: UIFont = .systemFont(ofSize: 16, weight: .bold), colorBack: UIColor = .mainApp, colorborder: UIColor = .blue, radius: CGFloat = 28) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(colorText, for: .normal)
        button.titleLabel?.font = textSet
        button.backgroundColor = colorBack
        button.layer.cornerRadius = radius
        button.layer.borderColor = colorborder.cgColor
        button.layer.borderWidth = 1.0
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    static func btnImage(image: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "\(image)"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}

extension UITextField {
    static func createUITextField(placeholder: String, colorPlaceholder: UIColor = .mainTextField, colorText: UIColor = .black, textSet: UIFont = .systemFont(ofSize: 16, weight: .bold)) -> UITextField {
        let textField = UITextField()
        textField.attributedText = NSAttributedString (
            string: "",
            attributes: [
                .foregroundColor: UIColor.red,
                .font: textSet
            ]
        )
        textField.textColor = colorText
        textField.font = textSet
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [
                .foregroundColor: colorPlaceholder,
                .font: textSet
            ]
        )
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
}
