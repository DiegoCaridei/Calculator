//
//  AppDelegate.swift
//  Calculator
//
//  Created by Diego.Caridei on 13/05/2019.
//  Copyright © 2019 Diego.Caridei. All rights reserved.
//

import UIKit
import ReSwift
let mainStore = Store<AppState>(reducer: calculatorReducer, state: nil)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

