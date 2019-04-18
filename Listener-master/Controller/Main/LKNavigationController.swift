//
//  LKNavigationController.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit

class LKNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setUpNavBarAppearence(){
        //导航栏默认背景色：defaultNavBarBarTintColor
        WRNavigationBar.defaultNavBarBarTintColor = UIColor.init(red: 245/255.0, green: 245/255.0, blue: 245/255.0, alpha: 1)
        //
        WRNavigationBar.defaultNavBarTintColor = kButtonColor
        WRNavigationBar.defaultNavBarTitleColor = UIColor.black
        
        WRNavigationBar.defaultShadowImageHidden = true
        
    }
}

extension LKNavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
}
