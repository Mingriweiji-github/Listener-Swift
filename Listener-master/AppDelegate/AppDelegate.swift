//
//  AppDelegate.swift
//  Listener-master
//
//  Created by gsf on 2019/4/17.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import SwiftMessages

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        return true
    }

    func setupTabbarStyle(delegate: UITabBarControllerDelegate?) -> ESTabBarController {
        let tabBarController = ESTabBarController()
        tabBarController.delegate = delegate
        tabBarController.title = "HH"
        tabBarController.tabBar.shadowImage = UIImage(named: "transparent")
        tabBarController.shouldHijackHandler = {
            tabBarController,ViewController,index in
            if index == 2 {
                return true
            }
            return false
        }
        tabBarController.didHijackHandler = {
            tabBarController,ViewController,index in
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25, execute: {
                let warning = MessageView.viewFromNib(layout: .cardView)
                warning.configureTheme(.warning)
                warning.configureDropShadow()
                
                let iconText = ["🤔", "😳", "🙄", "😶"].sm_random()!
                warning.configureContent(title: "Warning", body: "暂无此功能", iconText: iconText)
                warning.button?.isHidden = true
                var warningConfig = SwiftMessages.defaultConfig
                warningConfig.presentationContext = .window(windowLevel: UIWindow.Level.statusBar)
                SwiftMessages.show(config: warningConfig, view: warning)
            })
        }
        
        let home = LKHomeController()
        let find = LKFindController()
        let play = LKPlayContentView()
        let mine = LKMineController()
        let listen = LKListenController()
        
        home.tabBarItem = ESTabBarItem.init(LKIrregularityBasicContentView(), title: "首页", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"), tag: 0)
        home.tabBarItem = ESTabBarItem.init(LKIrregularityBasicContentView(), title: "我听", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"), tag: 1)
        
        home.tabBarItem = ESTabBarItem.init(LKIrregularityBasicContentView(), title: nil, image: UIImage(named: "tab_play"), selectedImage: UIImage(named: "tab_play"), tag: 3)
        
        home.tabBarItem = ESTabBarItem.init(LKIrregularityBasicContentView(), title: "发现", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"), tag: 4)
        home.tabBarItem = ESTabBarItem.init(LKIrregularityBasicContentView(), title: "我的", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"), tag: 5)
        
        let homeNav = LKNavigationController.init(rootViewController: home)
        let listneNav = LKNavigationController.init(rootViewController: listen)
        let playNav = LKNavigationController.init(rootViewController: play)
        let findNav = LKNavigationController.init(rootViewController: find)
        let mineNav = LKNavigationController.init(rootViewController: mine)
        home.title = "首页"
        listen.title = "我听"
        play.title = "播放"
        find.title = "发现"
        mine.title = "我的"
        tabBarController.viewControllers = [homeNav,listneNav,playNav,findNav,mineNav]
        
        return tabBarController
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

