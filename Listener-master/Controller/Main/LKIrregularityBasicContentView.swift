//
//  LKPlayBasicContentView.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class LKIrregularityBasicContentView: LKBouncesContentView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor.init(white: 175.0 / 255.0, alpha: 1.0)
        highlightTextColor = UIColor.init(red: 254/255.0, green: 73/255.0, blue: 42/255.0, alpha: 1.0)
        iconColor = UIColor.init(white: 175.0 / 255.0, alpha: 1.0)
        highlightIconColor = UIColor.init(red: 254/255.0, green: 73/255.0, blue: 42/255.0, alpha: 1.0)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class LKIrregularityContentView: ESTabBarItemContentView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        //设置Play barItem
        self.imageView.backgroundColor = UIColor.init(red: 250/255.0, green: 48/255.0, blue: 32/255.0, alpha: 1.0)
        self.imageView.layer.borderWidth = 2.0
        self.imageView.layer.borderWidth = UIColor.init(white: 235 / 255.0, alpha: 1.0).cgColor as! CGFloat
        self.imageView.layer.cornerRadius = 25
        self.insets = UIEdgeInsets.init(top: -23, left: 0, bottom: 0, right: 0)
        let transform = CGAffineTransform.identity
        self.imageView.transform = transform
        self.superview?.bringSubviewToFront(self)
        
        textColor = UIColor.init(white: 255/255, alpha: 1)
        highlightTextColor = UIColor.init(white: 255/255, alpha: 1)
        iconColor = UIColor.init(white: 255/255, alpha: 1)
        highlightIconColor = UIColor.init(white: 255/255, alpha: 1)
        backgroundColor = .clear
        highlightBackdropColor = .clear
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let p = CGPoint.init(x: point.x - imageView.frame.origin.x, y: point.y - imageView.frame.origin.y)
        return sqrt(pow(imageView.bounds.size.width / 2 - p.x, 2) + pow(imageView.bounds.size.height / 2 - p.y, 2)) < imageView.bounds.size.width / 2.0
    }
    
    override func updateLayout() {
        super.updateLayout()
        self.imageView.sizeToFit()
        self.imageView.center = CGPoint.init(x: self.bounds.size.width / 2, y: self.bounds.size.height / 2)
    }
}
