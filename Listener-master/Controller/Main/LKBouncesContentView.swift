//
//  LKBouncesContentView.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit

class LKBouncesContentView: LKBasicContentView {
    public var duration = 0.3
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bouncesAnimation()
        completion?()
    }
    override func reselectAnimation(animated: Bool, completion: (() -> ())?) {
        self.bouncesAnimation()
        completion?()
    }
    
    func bouncesAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        impliesAnimation.values = [1.0,1.4,0.9,1.15,0.95,1.02,1.0]
        impliesAnimation.duration = duration * 2
        impliesAnimation.calculationMode = CAAnimationCalculationMode.cubic
        imageView.layer.add(impliesAnimation, forKey: nil)
    }
}
