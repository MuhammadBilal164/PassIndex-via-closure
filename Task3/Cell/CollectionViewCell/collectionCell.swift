//
//  collectionCell.swift
//  Task3
//
//  Created by Umer Farooq on 22/09/2020.
//  Copyright © 2020 Umer Farooq. All rights reserved.
//

import UIKit



class collectionCell: UICollectionViewCell {
    
    
    
    //MARK: - Outlets
    @IBOutlet weak var pressBtn: UIButton!
    
    
    
    //MARK: - Variables
    var CollectionCellClosure1: ((collectionCell) -> Void)?
    
    
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    
    //MARK: - Helper Methods
    @IBAction func callClosure(_ sender: Any) {
        CollectionCellClosure1?(self)
    }
}
