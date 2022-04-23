//
//  HomeVC.swift
//  WhatToRead
//
//  Created by Даниил Алексеев on 19.03.2022.
//

import UIKit

class HomeVC: UIViewController {
    
    // MARK: - Переменные
    let searchController = UISearchController(searchResultsController: nil)
    var myCollectionView:UICollectionView?
    let modelData = ["ВАМ ПОНРАВИТСЯ", "МНОГИМ НРАВИТСЯ", "ЭТО КЛАССИКА", "ПОПУЛЯРНАЯ ФАНТАСТИКА", "САМЫЙ ЛУЧШИЙ НАУЧПОП", "ЛУЧШЕЕ ИЗ ДЕТЕКТИВОВ", "ПРИКЛЮЧЕНИЯ ВЕКА", "ТОП РОМАНОВ ВСЕХ ВРЕМЕН"]
    
    private var collectionView: UICollectionView?
    
    // MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
//
//        collectionView?.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        
        configureCollectionView()
        configureSearchBar()
    }
    
    // MARK: - Конфигурируем строку поиска
    func configureSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Что почитать?"
        navigationItem.searchController = searchController
    }
    
    // MARK: - Коллекцию
    func configureCollectionView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        layout.itemSize = CGSize(width: 150, height: 150)
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        myCollectionView?.showsVerticalScrollIndicator = false
        myCollectionView?.backgroundColor = UIColor.white
        view.addSubview(myCollectionView ?? UICollectionView())
        
        self.view = view
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
    }
}

// MARK: - UICollectionViewDataSource
extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        var constraints = [NSLayoutConstraint]()
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.identifier, for: indexPath) as! Cell
        myCell.title.translatesAutoresizingMaskIntoConstraints = false
        myCell.title.numberOfLines = 0
        myCell.title.text = modelData[indexPath.row]
        if indexPath.row % 2 == 0 {
            myCell.title.textAlignment = .left
            myCell.title.frame = CGRect(x: 0, y: 0, width: myCell.bounds.size.width, height: 240)
           
//            NSLayoutConstraint.activate([
//                myCell.title.bottomAnchor.constraint(equalTo: myCell.contentView.bottomAnchor, constant: -7),
//                myCell.title.leadingAnchor.constraint(equalTo: myCell.contentView.leadingAnchor, constant: 10),
//            ])
        } else {
            myCell.title.textAlignment = .right
            myCell.title.frame = CGRect(x: 0, y: 0, width: myCell.bounds.size.width, height: 60)
//            NSLayoutConstraint.activate([
//                myCell.title.topAnchor.constraint(equalTo: myCell.contentView.topAnchor, constant: 7),
//                myCell.title.trailingAnchor.constraint(equalTo: myCell.contentView.trailingAnchor, constant: 10),
//            ])
        }
        var count = 0
//     
        
        return myCell
    }
    
    func addCellConstraint() {
        
    }
}

// MARK: - UICollectionViewDelegate
extension HomeVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}
