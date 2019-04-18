//
//  LKHomeController.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit
import DNSPageView

class LKHomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupHomePageStyle()
    }
    func setupHomePageStyle() {
        let style = DNSPageStyle()
        style.isTitleScaleEnabled = true
        style.isTitleViewScrollEnabled = true
        style.isShowBottomLine = true
        style.titleColor = UIColor.gray
        style.titleSelectedColor = UIColor.red
        style.bottomLineColor = UIColor.red
        style.bottomLineHeight = 2
        
        let titles = ["推荐","分类","VIP","直播","广播"]
        let viewControllers:[UIViewController] = [LKHomeRecommandController(),LKHomeClassifyController(),LKHomeVIPController(),LKHomeLiveController(),LKHomeBroadCastController()]
        for vc in viewControllers {
            self.addChild(vc)
        }
        let pageView = DNSPageView(frame: CGRect(x: 0, y: kNavBarHeight, width: kScreenWidth, height: kScreenHeight - kNavBarHeight - 44), style: style, titles: titles, childViewControllers: viewControllers)
        pageView.contentView.backgroundColor = UIColor.red
        view.addSubview(pageView)
    }
}
