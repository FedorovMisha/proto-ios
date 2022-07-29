//
//  AppDelegate.swift
//  proto-ios
//
//  Created by Misha Fedorov on 02.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var applicationManager = ApplicationManager()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        applicationManager.startNewSession()
        return true
    }
}

