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
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.white
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return imageView
    }()
    
    let cellSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    
    }()
    
    let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.green
        
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.backgroundColor = UIColor.brown
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.backgroundColor = UIColor.gray
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return descriptionLabel
    }()
    
    func setupCellUI() {
        backgroundColor = UIColor.yellow
        
        addSubview(thumbnailImageView)
        addSubview(cellSeparator)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: [thumbnailImageView])
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]|", views: [userProfileImageView])
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-[v2(2)]|", views: [thumbnailImageView, userProfileImageView, cellSeparator])
        addConstraintsWithFormat(format: "H:|[v0]|", views: [cellSeparator])
        
        // top constraint for labels
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8)])
        addConstraints([NSLayoutConstraint(item: descriptionLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 8)])
        
        // left constraint for labels
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8)])
        addConstraints([NSLayoutConstraint(item: descriptionLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8)])

        // right constraint for labels
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0)])
        addConstraints([NSLayoutConstraint(item: descriptionLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0)])

        // height constraint for labels
        addConstraints([NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20)])
        addConstraints([NSLayoutConstraint(item: descriptionLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20)])

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("TO DO")
    }
}
