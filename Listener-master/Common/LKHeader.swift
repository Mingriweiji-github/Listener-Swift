//
//  LKHeader.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher
import SnapKit
import SwiftyJSON
import HandyJSON

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

let kButtonColor = UIColor(red: 242/255.0, green: 77/255.0, blue: 51/255.0, alpha: 1)
let kDownColor = UIColor(red: 240/255.0, green: 241/255.0, blue: 244/255.0, alpha: 1)


//iPhoneX / iPhoneXS
let isPhoneX_XS = kScreenHeight == 812 ? true : false
//iPhoneXR / iPhoneXSMax
let isIphoneXR_XSMax = kScreenHeight == 896 ? true :false
//所有的全面屏
let isFullScreen = (isPhoneX_XS || isIphoneXR_XSMax) ? true : false
let kNavBarHeight: CGFloat = isFullScreen ? 88 : 64
let kTabBarHeight: CGFloat = isFullScreen ? 49 + 34 : 49








