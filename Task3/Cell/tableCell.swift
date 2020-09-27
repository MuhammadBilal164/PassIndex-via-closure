//
//  tableCell.swift
//  Task3
//
//  Created by Umer Farooq on 22/09/2020.
//  Copyright © 2020 Umer Farooq. All rights reserved.
//

import UIKit



class tableCell: UITableViewCell {
    
    
    
    //MARK: - IBOutlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    //MARK: - Variables
    let cellIdentifier = "cell"
    var tableCellClosure:((Int,tableCell) ->())?
    
    
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        
        super.awakeFromNib()
        setupView()
    }
    
    
    
    //MARK: - SetupView
    func setupView() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "collectionCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
    }
}



//MARK: - UICollectionViewDelegate & DataSource
extension tableCell:UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! collectionCell
        
        cell.CollectionCellClosure1 = { cell in
            guard let i = self.collectionView.indexPath(for: cell) else {return}
            self.tableCellClosure?(i.row,self)
        }
        
        cell.pressBtn.tag = indexPath.row
        return cell
    }
}
