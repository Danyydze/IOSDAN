//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Данил Марков on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "HI, bratka!"
        label.textAlignment = .center
        label.font = UIFont.systemFont (ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter text..."
        textField.backgroundColor = UIColor.clear
        textField.borderStyle = .none
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let editTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Edit text"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let slider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 10.0
        slider.maximumValue = 35.0
        slider.value = 17.5
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let redTextLabel: UILabel = {
        let label = UILabel()
        label.text = "is red text"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let colorSwitch: UISwitch = {
        let colorSwitch = UISwitch()
        colorSwitch.translatesAutoresizingMaskIntoConstraints = false
        return colorSwitch
    }()
    
    private let submitButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Submit text", for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        colorSwitch.addTarget(self, action: #selector(switchValueChanged), for: .valueChanged)
        submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
    }
    
    private func setupUI(){
        view.addSubview(label)
        view.addSubview(textField)
        view.addSubview(editTextLabel)
        view.addSubview(slider)
        view.addSubview(redTextLabel)
        view.addSubview(colorSwitch)
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 50),
            
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100),
            textField.widthAnchor.constraint(equalToConstant: 300),
            textField.heightAnchor.constraint(equalToConstant: 40),
            
            editTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            editTextLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 150),
            editTextLabel.widthAnchor.constraint(equalToConstant: 200),
            editTextLabel.heightAnchor.constraint(equalToConstant: 30),
            
            slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            slider.topAnchor.constraint(equalTo: editTextLabel.bottomAnchor, constant: 125),
            slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            redTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            redTextLabel.bottomAnchor.constraint(equalTo: slider.topAnchor, constant: -50),
            redTextLabel.widthAnchor.constraint(equalToConstant: 200),
            redTextLabel.heightAnchor.constraint(equalToConstant: 30),
            
            colorSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            colorSwitch.centerYAnchor.constraint(equalTo: redTextLabel.centerYAnchor),
            
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            submitButton.widthAnchor.constraint(equalToConstant: 200),
            submitButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            textField.textColor = .red
        } else {
            textField.textColor = .black
        }
    }
    
    @objc private func sliderValueChanged(_ sender: UISlider) {
        let fontSize = CGFloat(sender.value)
        textField.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    @objc private func submitButtonTapped() {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}
