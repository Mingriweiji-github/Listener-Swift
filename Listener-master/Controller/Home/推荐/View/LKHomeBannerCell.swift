//
//  LKHomeBannerCell.swift
//  Listener-master
//
//  Created by gsf on 2019/4/19.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit

class LKHomeBannerCell: UICollectionViewCell {
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    lazy var desLabel: UILabel = {
        let desLabel = UILabel()
        return desLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews() {
        self.addSubview(imageView)
        imageView.image = UIImage(named: "fj.jpg")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.snp.makeConstraints { (make) in
            make.left.top.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().offset(-60)
        }
        self.addSubview(self.titleLabel)
        titleLabel.text = "Haha"
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.top.equalTo(self.imageView.snp.bottom)
            make.height.equalTo(30)
        }
        
        self.addSubview(desLabel)
        desLabel.text = "我是描述信息"
        desLabel.snp.makeConstraints { (make) in
            make.left.bottom.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(15)
        }
    }
}
