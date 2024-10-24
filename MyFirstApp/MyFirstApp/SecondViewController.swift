//
//  SecondViewController.swift
//  MyFirstApp
//
//  Created by Данил Марков on 24.10.2024.
//

import UIKit

class SecondViewController: UIViewController {
    let messageLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
    }

    private func setupLabel() {
        messageLabel.text = "GLAMUUUUUUUUR!"
        messageLabel.textColor = .systemPink
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont.systemFont(ofSize: 30)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(messageLabel)

        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            messageLabel.widthAnchor.constraint(equalToConstant: 300),
            messageLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
