//
//  LKHomeGridCell.swift
//  Listener-master
//
//  Created by gsf on 2019/4/19.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit
class LKHomeGridCell: UICollectionViewCell {
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    lazy var titleLable: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.imageView)
        imageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(40)
            make.centerX.equalToSuperview()
        }
        self.addSubview(self.titleLable)
        self.titleLable.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.height.equalTo(20)
            make.top.equalTo(self.imageView.snp.bottom).offset(5)
        }
    }
}
