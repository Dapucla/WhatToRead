//
//  Cell.swift
//  WhatToRead
//
//  Created by Sungur on 25.03.2022.
//

import UIKit

class Cell: UICollectionViewCell {
    
    static let identifier = "MyCell"
    
    
    let title = UILabel()
    
//    (frame: CGRect(x: 0, y: 0, width: contentView.bounds.size.width, height: 40))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(named: "CategoryColor")
        contentView.layer.cornerRadius = 5
        
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOffset = CGSize(width: 0, height: 0)
        contentView.layer.shadowRadius = 5.0
        contentView.layer.shadowOpacity = 0.5
        contentView.layer.masksToBounds = false
        
//        title.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: contentView.bounds.size.width, height: 40))
        title.textColor = UIColor.black
        title.adjustsFontSizeToFitWidth = true
        title.textAlignment = .center
        title.textColor = .systemYellow
        title.lineBreakMode = .byWordWrapping
//        title.numberOfLines = 1
        
//        title.textAlignment = .right
        contentView.addSubview(title)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
//        title.frame = CGRect(x: 0, y: 0, width: contentView.bounds.size.width, height: 250)
    }
    
    func addConstraints() {
        
//        title.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
//            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
//        ])
    }
    
}
