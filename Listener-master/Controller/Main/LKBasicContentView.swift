//
//  LKBasicContentView.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import ESTabBarController_swift

class LKBasicContentView : ESTabBarItemContentView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor.init(white: 175.0/255.0, alpha: 1.0)
        highlightTextColor = UIColor.init(red: 254/255, green: 73/255, blue: 42/255.0, alpha: 1)
        iconColor = UIColor.init(white: 175/255, alpha: 1)
        highlightIconColor = UIColor.init(red: 254/255, green: 73/255, blue: 42/255, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder: has not been implementd")
    }
}
