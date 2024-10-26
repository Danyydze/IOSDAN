//
//  SecondViewController.swift
//  MyFirstApp
//
//  Created by Данил Марков on 24.10.2024.
//

import UIKit

class SecondViewController: UIViewController {

    private let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "GLAMUUUUUUUUR!"
        label.textColor = .systemPink
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }

    private func setupUI() {
        view.addSubview(messageLabel)

        NSLayoutConstraint.activate([
            messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            messageLabel.widthAnchor.constraint(equalToConstant: 300),
            messageLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
