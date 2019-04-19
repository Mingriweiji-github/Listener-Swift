//
//  LKHomeGuessYouLike.swift
//  Listener-master
//
//  Created by gsf on 2019/4/19.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit
class LKHomeGuessYouLike: UICollectionViewCell {
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    lazy var subTitleLabel: UILabel = {
        let subTitle = UILabel()
        return subTitle
    }()
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    func setupView() {
        self.addSubview(self.imageView)
        imageView.snp.makeConstraints { (make) in
            make.left.top.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(-60)
        }
        self.addSubview(self.titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.imageView.snp.bottom)
            make.height.equalTo(20)
        }
        self.addSubview(self.subTitleLabel)
        self.subTitleLabel.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.titleLabel.snp.bottom)
            make.height.equalToSuperview()
        }
    }
}
