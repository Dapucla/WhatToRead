//
//  MCDropCell.swift
//  ЧтоБыПочитать
//
//  Created by Sungur on 29.06.2022.
//

import UIKit

class MCDropCell: UITableViewCell {
    var data: MCDropData? {
        didSet {
            guard let data = data else { return }
            self.title.text = data.title
            self.url.text = data.url
        }
    }
    
    func animate() {
        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.contentView.layoutIfNeeded()
        })
    }
    
    fileprivate let title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.text = "Аннотация"
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let url: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = "Морфологический разбор"
        label.textColor = .black
        label.numberOfLines = -1
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate var container: UIView = {
       let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.clipsToBounds = true
        v.backgroundColor = UIColor.systemGray5
        v.layer.cornerRadius = 3
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(container)
        container.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4).isActive = true
        container.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4).isActive = true
        container.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4).isActive = true
        container.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4).isActive = true
        
        container.addSubview(title)
        container.addSubview(url)
        
        
        title.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
        title.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
        title.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        url.topAnchor.constraint(equalTo: title.bottomAnchor).isActive = true
        url.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 4).isActive = true
        url.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -4).isActive = true
        url.heightAnchor.constraint(equalToConstant: 140).isActive = true
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
