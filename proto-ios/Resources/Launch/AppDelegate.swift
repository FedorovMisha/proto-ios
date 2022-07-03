//
//  AppDelegate.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let module = StartCoordinator()
        window?.rootViewController = module.presenter
        module.start()
        window?.makeKeyAndVisible()
        return true
    }
}

