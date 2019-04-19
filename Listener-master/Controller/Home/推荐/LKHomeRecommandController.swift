//
//  LKHomeRecommandController.swift
//  Listener-master
//
//  Created by gsf on 2019/4/18.
//  Copyright © 2019 Mingriweiji-github. All rights reserved.
//

import UIKit
class LKHomeRecommandController: UIViewController {
    //register header & cell
    private let LKRecommandHeaderID = "LKRecommandHeaderID"
    private let LKRecommandFooterID = "LKRecommandFooterID"
    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewLayout()
        let collection = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collection.delegate = self
        collection.dataSource = self
        collection.backgroundColor = UIColor.white
        collection.register(LKHomeRecommandHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: LKRecommandHeaderID)
        collection.register(LKHomeRecommandFooterView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: LKRecommandFooterID)
        //default
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "default")
        collection.register(LKHomeBannerCell.self, forCellWithReuseIdentifier: "LKHomeBannerCell")
        collection.register(LKHomeGridCell.self, forCellWithReuseIdentifier: "LKHomeGridCell")
        
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.collectionView)
        self.collectionView.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.center.equalToSuperview()
        }
//        self.collectionView.
        
    }
}
extension LKHomeRecommandController : UICollectionViewDataSource,UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }
}
