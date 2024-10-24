//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Данил Марков on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    let textField = UITextField()
    let editTextLabel = UILabel()
    let slider = UISlider()
    let redTextLabel = UILabel()
    let colorSwitch = UISwitch()
    let submitButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        setupTextField()
        setupEditTextLabel()
        setupSlider()
        setupRedTextLabel()
        setupColorSwitch()
        setupSubmitButton() // Настройте кнопку
    }

    private func setupLabel() {
        label.text = "Hi, bratka!"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 200),
            label.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    // Ввод текста
    private func setupTextField() {
        textField.placeholder = "Enter text"
        textField.backgroundColor = UIColor.clear
        textField.borderStyle = .none
        textField.textAlignment = .left
        textField.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(textField)

        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100),
            textField.widthAnchor.constraint(equalToConstant: 300),
            textField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    private func setupEditTextLabel() {
        editTextLabel.text = "Edit text"
        editTextLabel.textAlignment = .left
        editTextLabel.font = UIFont.systemFont(ofSize: 20)
        editTextLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(editTextLabel)

        NSLayoutConstraint.activate([
            editTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            editTextLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 150),
            editTextLabel.widthAnchor.constraint(equalToConstant: 200),
            editTextLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    //Слайдер
    private func setupSlider() {
        slider.minimumValue = 10.0
        slider.maximumValue = 35.0
        slider.value = 17.5
        
        slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)

        slider.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(slider)

        NSLayoutConstraint.activate([
            slider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            slider.topAnchor.constraint(equalTo: editTextLabel.bottomAnchor, constant: 125),
            slider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

    private func setupRedTextLabel() {
        redTextLabel.text = "is red text"
        redTextLabel.textAlignment = .left
        redTextLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(redTextLabel)

        NSLayoutConstraint.activate([
            redTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            redTextLabel.bottomAnchor.constraint(equalTo: slider.topAnchor, constant: -50),
            redTextLabel.widthAnchor.constraint(equalToConstant: 200),
            redTextLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    //редакетор цвета
    private func setupColorSwitch() {
        colorSwitch.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(colorSwitch)

        NSLayoutConstraint.activate([
            colorSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            colorSwitch.centerYAnchor.constraint(equalTo: redTextLabel.centerYAnchor)
        ])

        colorSwitch.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
    }

    // кнопка отправка текста
    private func setupSubmitButton() {
        submitButton.setTitle("Submit text", for: .normal)
        submitButton.backgroundColor = UIColor.systemBlue
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.layer.cornerRadius = 25
       
       submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)

       submitButton.translatesAutoresizingMaskIntoConstraints = false

       view.addSubview(submitButton)

       NSLayoutConstraint.activate([
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
