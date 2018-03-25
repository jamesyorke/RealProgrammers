//
//  AppDelegate.swift
//  RealProgrammers
//
//  Created by James Yorke on 22/03/2018.
//  Copyright © 2018 james. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let storyboardName = "Main"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        let navigationViewController = storyboard.instantiateInitialViewController() as! UINavigationController
        let programmersViewController = navigationViewController.topViewController as! ProgrammersTableViewController
        
        let programmersRepository = ProgrammersRepository()
        let useCase = ShowProgrammersListUseCase(withRepository: programmersRepository)
        let presenter = ProgrammersListPresenter(useCase: useCase)
        useCase.presenter = presenter
        programmersViewController.presenter = presenter
        
        defineRootViewController(initialViewController: navigationViewController)
        return true
    }
    
    func defineRootViewController(initialViewController: UIViewController) {
        window = UIWindow()
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()
        
    }

}








