//
//  SceneDelegate.swift
//  MyFirstApp
//
//  Created by Данил Марков on 23.10.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let mainVC = ViewController() // Ваш основной ViewController
        let navigationController = UINavigationController(rootViewController: mainVC) // Оберните его в UINavigationController
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }}
