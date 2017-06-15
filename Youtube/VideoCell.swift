//
//  VideoCell.swift
//  Youtube
//
//  Created by Jon Lu on 6/15/17.
//  Copyright © 2017 Jon Lu. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCellUI()
    }
    
    func setupCellUI() {
        backgroundColor = UIColor.yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("TO DO")
    }
}
